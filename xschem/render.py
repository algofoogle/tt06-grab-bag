
import ltspice
src = 'simulation/tb_r2rV2.raw'
data = ltspice.Ltspice(src)
print(f'Loading {src}... ', end='')
data.parse()
print('Done')
t = data.get_time()
v = data.get_data('V(out)')
n = 2
x = -2
with open('myfile.ppm', 'w') as f:
    f.write("P2\n")
    f.write(f'{t.size} 1\n')
    f.write('255\n')
    for i in range(t.size):
        s = v[i]
        n = min(n,s)
        x = max(x,s)
        s = max(min(s-0.3,1.0),0.0)
        d = int(s*255)
        f.write(f'{d} ')
        # breakpoint()
print(f'min: {n:0.6f} :: max: {x:0.6f}')

