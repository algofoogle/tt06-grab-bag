*   How to safely probe
*   Input impedance of LM741 and other newer opamps
*   Design PCB base board that fits the carrier -- might need a Pi Pico both for selecting the design, clocking it, and sampling outputs via ADC. Intent of this board is not only for my testing, but also hacking on (if I want to try different core voltage, for example, or doing current limiting) and having an actual VGA output.
*   Pi Pico could clock the design at a slow speed, sample outputs, then gradually speed it up and see how well it performs. Generate images via streaming to PC.
*   Output impedance from the design: Test with a 100k resistor?
*   Simulations:
    *   "Reference image": What it would look like with perfect 24-bit digital output
    *   Just the analog part
    *   Analog part from extraction -- just delete the digital block and re-extract?
    *   Whole extracted layout (using SPICE model for the digital part too) -- will be VERY slow
    *   Cosim
    *   Cosim with an extra Verilog wrapper to provide inputs.
