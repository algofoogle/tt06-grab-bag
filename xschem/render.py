
import ltspice
src = 'simulation/tb_r2rV2.raw'
data = ltspice.Ltspice(src)
print(f'Loading {src}... ', end='')
data.parse()
print('Done')
t = data.get_time()
v = data.get_data('V(out_parax)')
n = 2
x = -2
scale_min = 0.00
scale_max = 1.67
# scale_min = 0.3
# scale_max = 1.4
with open('myfile2.ppm', 'w') as f:
    f.write("P2\n")
    f.write(f'{t.size} 1\n')
    f.write('255\n')
    for i in range(t.size):
        s = v[i]
        n = min(n,s)
        x = max(x,s)
        scaled = (s-scale_min)/(scale_max-scale_min)
        s = max(min(scaled,1.0),0.0)
        d = int(scaled*255)
        f.write(f'{d} ')
        # breakpoint()
print(f'min: {n:0.6f} :: max: {x:0.6f}')

