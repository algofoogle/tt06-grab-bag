import ltspice
import os
import numpy as np


# SRC = 'simulation/tb_r2rV2.raw'
# OUT = 'unbuffered_parax.ppm'
SRC = 'mixed.raw'
OUT = '~/HOST_Documents/mixed.ppm'
# VR = 'V(out)'
# VG = 'V(out)'
# VB = 'V(out)'
# VR = 'V(out_parax)'
# VG = 'V(out_parax)'
# VB = 'V(out_parax)'
VR = 'V(red_pin_out)'
VG = 'V(green_pin_out)'
VB = 'V(blue_pin_out)'


# piecewise_linear_interpolation
def pwlerp(time_points, output_values, interval=0.1):
    """
    Sample a piece-wise linear function at regular intervals.

    Parameters:
    - time_points: List or array of time points
    - output_values: List or array of output values corresponding to time points
    - interval: Regular sampling interval

    Returns:
    - sampled_times: List of sampled time points
    - sampled_values: List of corresponding sampled output values
    """

    # Ensure time_points and output_values are numpy arrays
    time_points = np.array(time_points)
    output_values = np.array(output_values)

    # Calculate the slopes between consecutive points
    slopes = np.diff(output_values) / np.diff(time_points)

    # Sampled times from the minimum time to the maximum time with the given interval
    sampled_times = np.arange(min(time_points), max(time_points), interval)

    # Initialize sampled values list
    sampled_values = []

    # Interpolate values for each sampled time
    for t in sampled_times:
        # Find the index of the interval in which t lies
        index = np.searchsorted(time_points, t, side='right') - 1

        # Handle the case when t is outside the given time range
        if index < 0:
            sampled_values.append(output_values[0])
        elif index >= len(slopes):
            sampled_values.append(output_values[-1])
        else:
            # Interpolate based on the slope and time difference
            interpolated_value = output_values[index] + slopes[index] * (t - time_points[index])
            sampled_values.append(interpolated_value)

    return sampled_times, sampled_values

# # --- TEST pwlerp: ---
# ta = []
# va = []
# tc = 0.0
# for n in range(200):
#     ta.append(tc)
#     va.append(np.sin(tc/150.0))
#     tc += np.random.rand()*50.0
# times, values = pwlerp(ta, va, (max(ta)-min(ta))/100.0)
# with open('data_raw.csv', 'w') as f:
#     for i in range(len(times)):
#         f.write(f'{times[i]},{values[i]}\n')
# # with open('data_raw.csv', 'w') as f:
# #     for i in range(len(ta)):
# #         f.write(f'{ta[i]},{va[i]}\n')
# exit()


data = ltspice.Ltspice(SRC)
print(f'Loading {SRC}... ', end='')
data.parse()
print('Done')
t = data.get_time()
rdata = data.get_data(VR)
gdata = data.get_data(VG)
bdata = data.get_data(VB)
# Min and max tracking:
n = 200
x = -200
# scale_min/max...
# Voltage range that maps to 0..255 out (with clamping):
# -- Raw (unbuffered) DAC output:
scale_min = 0.00
scale_max = 1.67
sr = scale_max-scale_min
transform = lambda c: int(255*max(0,min(1,(c-scale_min)/sr)))
# -- Buffered DAC output:
# scale_min = 0.3
# scale_max = 1.4
div = 1 # Resolution divider for data samples.
samples = int(t.size/div)
print(f'Times: {t.size} - Samples: {samples}')
out_file = os.path.expanduser(OUT)
last_time = 0.0
with open('render.log', 'w') as log:
    with open(out_file, 'w') as f:
        f.write("P3\n")
        f.write(f'{samples} 1\n')
        f.write('255\n')
        for i in range(samples):
            # Get raw R/G/B values:
            r = rdata[i*div]
            g = gdata[i*div]
            b = bdata[i*div]
            delta = t[i*div]-last_time
            last_time = t[i*div]
            log.write(f'{i}: {t[i*div]*1_000_000_000} delta: {delta*1_000_000_000}\n')
            # Adjust tracked min/max values from them:
            n = min(n,r,g,b)
            x = max(x,r,g,b)
            # Now scale them to the 0..255 range:
            r = transform(r)
            g = transform(g)
            b = transform(b)
            f.write(f'{r} {g} {b} ')
            # breakpoint()
print(f'min: {n:0.6f} :: max: {x:0.6f}')

