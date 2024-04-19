# Controller

## Pinouts

### `ui_in`

*   **DONE:** See detailed info below about reset state

### `uo_out`

These match the Tiny VGA PMOD - See: https://github.com/algofoogle/tt05-vga-spi-rom/blob/9208ed836d03bb5593d383a55a8ddcab464ed9d2/src/tt05_top.v#L13-L23

0.  **DONE**: `red[7]`
1.  **DONE**: `green[7]`
2.  **DONE**: `blue[7]`
3.  **DONE**: `vsync`
4.  **DONE**: `red[6]`
5.  **DONE**: `green[6]`
6.  **DONE**: `blue[6]`
7.  **DONE**: `hsync`

### `ua`

0.  **DONE:** `red`
1.  **DONE:** `green`
2.  **DONE:** `blue`
3.  **DONE (nil):** (none)
4.  **DONE (nil):** (none)
5.  **DONE**: `Y` (inverter output)

### bidir

0.  **DONE:** OUT: vblank
1.  **DONE:** OUT: hblank
2.  **DONE:** OUT: `Y` (copy of inverter output)
3.  **DONE (nil):** (IN: unused)
4.  **DONE (nil):** (IN: unused)
5.  **DONE (nil):** (IN: unused)
6.  **DONE (nil):** (IN: unused)
7.  **DONE:** IN: `A` (inverter input)

`uio_oe` ties:

0.  **DONE:** *VPWR*
1.  **DONE:** *VPWR*
2.  **DONE:** *VPWR*
3.  **DONE:** VGND
4.  **DONE:** VGND
5.  **DONE:** VGND
6.  **DONE:** VGND
7.  **DONE:** *VPWR*

`uio_out` ties:

3.  **DONE:** VGND
4.  **DONE:** VGND
5.  **DONE:** VGND
6.  **DONE:** VGND
7.  **DONE:** VGND

### Power

*   Controller:
    *   **DONE:** VPWR
    *   **DONE:** VGND
*   DACs:
    *   **DONE:** VGND
    *   **DONE:** VSUBS
*   Inverter:
    *   **DONE:** VPWR (VDD)
    *   **DONE:** VGND (VSS)



## Info

Pin arrangement:

*   North:
    *   TT pin pitch is 3.68um
*   South:
    *   DAC pin pitch is 4um
    *   Insert dummy pins between channels


This is part of an intended mixed-signal design. Not properly implemented yet.



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
