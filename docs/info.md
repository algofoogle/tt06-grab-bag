<!---
You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.

NOTE: I've used &tilde; instead of actual `~` to avoid a mismatch between GFM and the PDF doc generation
(i.e. GFM sees this character as a strikethrough marker, but the PDF doc generation does not).
Ideally I would use &#x2053 ('swung dash') which is technically probably the correct symbol for
"approximate ranges" but this doesn't work in the PDF generator.
-->

![tt06-grab-bag GDS layout showing digital block, 4 DACs, and 1 inverter](./layout.png)

## What is this thing?

A simple analog/mixed-signal project I created when invited to participate in the first round of Matt Venn's Zero to ASIC **Analog Course** beta, and ultimately submitted to TT06.

It comprises the following:

*   A bog-standard CMOS inverter. That was my very first custom layout attempt.
*   A digital block that generates a few basic 24b-colour (RGB888) VGA test patterns.
*   Analog RGB outputs (running digital block VGA outputs through 3x 8-bit R2R DACs).
*   An extra 4-bit R2R DAC.

### VGA test pattern outputs

The design's *main* purpose is to generate VGA test patterns that will hopefully look as good as these simulations:

![Simulated VGA outputs, XOR pattern and RAMP pattern](./hhz-sim.png)

Notice there is some horizontal smearing (more exaggerated in the right-hand image of the red/green mixes). The outputs might look better, or could look worse. There could even end up being weird banding or noise. Let's wait and see!

The internal R2R DACs for each of the RGB outputs just go directly (unbuffered) to the analog output pins, where they are subject to the loading of the TT06 analog mux (estimated to be about 500&ohm; and 5pF). This combination means their slew rate is expected to be pretty bad (at least by VGA timing standards): On the order of 240&tilde;360ns (or 6&tilde;9 horizontal pixels) going from 0V to full 1.8V.

In a future design I plan to implement internal buffering to help mitigate some of the TT analog mux load.

NOTE: You will almost certainly need some sort of output buffering between this design and a VGA display, because the design outputs a high-impedance (&tilde;10k&ohm; but maybe a little worse) 0&tilde;1.8V range, while a VGA display expects 0&tilde;0.7V at 75&ohm;. Read '**How to test**' for more info.


### CMOS inverter

Pretty simple:

*   Its input is `uio_in[7]` (bidir 7).
*   Its output goes to two places: `ua[3]` (analog) and `uio_out[2]` (digital).
*   I would expect its digital output performance to be better, because it has more buffering (and less loading) along the TT digital mux, than what it does on the TT analog mux.

The graphs below show that the simulated *analog* output is expected to be stable (enough) within 10ns. This relatively poor performance is characteristic of the TT analog mux loading. I expect bigger transistors could drive this harder and make it faster.

![Xschem simulation of my CMOS inverter](./inverter.png)


### Extra 4-bit R2R

I took one of the 8-bit R2R DAC layouts and copied it, pulling the 4 LSB to GND, and connecting the 4 MSB to spare bidir inputs: `uio_in[6:4]`. This DAC outputs via `ua[4]`.


## How it works

TBC!

## How to test

TBC!

Highlights:

*   External buffering (opamps?) for analog RGB outputs, to match 0&tilde;1.8V@10k&ohm; to 0&tilde;0.7V@75&ohm;
*   Digital block's mode selection is asserted via `ui_in` *during reset*
*   For safety, initial test should be done with no analog output loading, and with all of `ui_in` pulled low (which selects pass-thru mode AND ensures all DAC *inputs* internally are low, so hopefully no current).
*   RGB222 digital outputs compatible with the [Tiny VGA PMOD].

## External hardware

*   10MHz-capable (or better; preferably 25MHz) opamps on each of the R, G, B outputs, to both make them into low-impedance (matching 75&ohm; typical VGA termination), and also to level-shift from 0&tilde;1.8V to 0&tilde;0.7V.
*   Optionally the [Tiny VGA PMOD] plugged into the dedicated output port (`uo_out`).

Come back later and I'll have a better explanation of how to hook up to a VGA display.


[Tiny VGA PMOD]: https://github.com/mole99/tiny-vga
