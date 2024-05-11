![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)

# Anton's TT06 grab bag

This is a simple analog/mixed-signal project, created from the [TT06 analog template repo](https://github.com/TinyTapeout/tt06-analog-template).

![GDS layout render](./docs/layout.png)

I was invited to participate in the first round of Matt Venn's Zero to ASIC **Analog Course** beta, and this was the design I ultimately submitted to TT06.

It implements:
*   A bog-standard CMOS inverter. That was my very first custom layout attempt.
*   A digital block that generates a few basic 24b-colour (RGB888) VGA test patterns.
*   Analog RGB outputs (running digital block VGA outputs through 3x 8-bit R2R DACs).
*   An extra 4-bit R2R DAC.

**For much more information, [read the full documentation](docs/info.md)**

# What is Tiny Tapeout?

TinyTapeout is an educational project that aims to make it easier and cheaper than ever to get your digital designs manufactured on a real chip.

To learn more and get started, visit https://tinytapeout.com.

# Analog projects

For specifications and instructions, see the [analog specs page](https://tinytapeout.com/specs/analog/).

*Note*: At the time of writing (2024-05-11) analog designs are currently in beta.
If you have any questions, please join the [Tiny Tapeout Discord](https://tinytapeout.com/discord) and ask in the `#analog` channel.

# Resources

- [FAQ](https://tinytapeout.com/faq/)
- [Digital design lessons](https://tinytapeout.com/digital_design/)
- [Learn how semiconductors work](https://tinytapeout.com/siliwiz/)
- [Join the community](https://tinytapeout.com/discord)
- [Build your design locally](https://docs.google.com/document/d/1aUUZ1jthRpg4QURIIyzlOaPWlmQzr-jBn3wZipVUPt4)

