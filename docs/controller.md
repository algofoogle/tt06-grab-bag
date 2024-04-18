# Controller

This is part of an intended mixed-signal design. Not properly implemented yet.

These are my loose notes:

`uo_out`: These match the Tiny VGA PMOD - See: https://github.com/algofoogle/tt05-vga-spi-rom/blob/9208ed836d03bb5593d383a55a8ddcab464ed9d2/src/tt05_top.v#L13-L23

0.  `red[7]`
1.  `green[7]`
2.  `blue[7]`
3.  `vsync`
4.  `red[6]`
5.  `green[6]`
6.  `blue[6]`
7.  `hsync`


```

Mode selected by ui_in at reset:

Bit 7 specifies VGA timing selection:
    0 = Regular 640x480@59.94Hz from 25.175MHz clock
    1 = 1440x900@60Hz from 26.6175MHz clock

Mode 0: Pass ui_in directly to all 3 DACs:
    76543210
    -000----    Mode
    ------g-    Gate: 0 = ungated; 1 = gated by VGA blanking
    -------r    Registered: 0 = unregistered; 1 = registered

Mode 1: Ramp tests:
    -001----    Mode
    ----dd--    Divider (-1, i.e. 0=div/1, 1=div/2)
    ------pp    Primary:
                0 = red
                1 = green
                2 = blue
                4 = all

Mode 2: Bars test: Ramp interleaved with negative ramp on alternate pixels
    -010----    Mode
    ----dd--    Divider (-1, i.e. 0=div/1, 1=div/2)
    ------pp    Primary:
                0 = red
                1 = green
                2 = blue
                4 = all

Mode 3: XOR patterns
...SEE BELOW...
```

For nice XOR patterns, this Shadertoy code gives an idea of something cool that we can do:

```c
void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = fragCoord/iResolution.xy;
    
    int t = int(iTime*60.0) & 0xFF;
    int x = int(fragCoord.x) & 0xFF;
    int y = int(fragCoord.y) & 0xFF;
    int ax = (((int(fragCoord.x)+int(iTime*7.5))>>1) & 0xFF);
    int ay = (((int(fragCoord.y)+int(iTime*7.5))>>1) & 0xFF);
    int bx = (((int(fragCoord.x)+int(iTime*15.0))<<0) & 0xFF);
    int by = (((int(fragCoord.y)+int(iTime*30.0))<<0) & 0xFF);
    int cx = (((int(fragCoord.x)+int(iTime*30.0))<<1) & 0xFF);
    int cy = (((int(fragCoord.y)+int(iTime*15.0))<<1) & 0xFF);


    vec3 col;
    if (false) {    
        // Time varying pixel color
        col = vec3(
            float(ax^ay)/256.0,
            float(bx^by)/256.0,
            float(cx^cy)/256.0
        ); //0.5 + 0.5*cos(iTime+uv.xyx+vec3(0,2,4));
    } else {    
        col = vec3(
            float(0xFF&((x>>1)^((y<<0))))/256.0,
            float(0xFF&(x&y))/256.0,
            float(0xFF&(((x-y)&0xFF)+(t&0xFF)/*^(y^x)*/))/256.0
        );
    }

    // Output to screen
    fragColor = vec4(col,1.0);
}
```
