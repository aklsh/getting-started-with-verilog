# Getting Started with Verilog

This repository contains some verilog modules which are the elementary and fundamental building blocks of a digital circuit. It is best suited for those who are just getting started with Verilog.

**Table of Contents**
- [Modules](#modules)
  - [Flip - Flops](#flip-flops)
  - [Adder Circuits](#adder-circuits)
  - [Counters](#counters)
  - [Multiplexers and De-Multiplexers](#multiplexers-and-de-multiplexers)
  - [Miscellaneous](#miscellaneous)
- [Contributing](#contributing)
- [License](#license)

## Modules
### Flip - Flops
-   #### [D Flip-Flop](/FFs/DFF/)
    *   [without *Clear/Reset*](/FFs/DFF/DFF.v)
    *   [with __*Synchronous*__ *Clear/Reset*](/FFs/DFF/DFF_SyncClear.v)
    *   [with __*Asynchronous*__ *Clear/Reset*](/FFs/DFF/DFF_AsyncClear.v)

-   #### [T Flip-Flop](/FFs/TFF.v)
    *   [without *Clear/Reset*](/FFs/TFF/TFF.v)
    *   [with __*Synchronous*__ *Clear/Reset*](/FFs/TFF/TFF_SyncClear.v)
    *   [with __*Asynchronous*__ *Clear/Reset*](/FFs/TFF/TFF_AsyncClear.v)
-   #### [JK Flip-Flop](/FFs/JKFF/)
    *   [without *Clear/Reset*](/FFs/JKFF/JKFF.v)
    *   [with __*Synchronous*__ *Clear/Reset*](/FFs/JKFF/JKFF_SyncClear.v)
    *   [with __*Asynchronous*__ *Clear/Reset*](/FFs/JKFF/JKFF_AsyncClear.v)


### Adder Circuits
*   [1 Bit Half Adder](/Adders/HA.v)
*   [1 Bit Full Adder](/Adders/FA.v)
*   [N Bit Carry Look Ahead Adder](/Adders/NBitCarryLookAheadAdder.v)
*   [N Bit Ripple Carry Adder](/Adders/NBitRippleCarryAdder.v)

### Counters
*   [N Bit Counter (generic)](/Counters/NBitCounter.v)
*   [N Bit Johnson Counter](/Counters/NBitJohnsonCounter.v)

### Multiplexers and De-Multiplexers
*   [2<sup>n</sup> to 1 Multiplexer](/Multiplexers\and\De-Multiplexers/mux2nTo1.v)
*   [1 to 2<sup>n</sup> De-Multiplexer](/Multiplexers\and\De-Multiplexers/deMUX1To2n.v)

### Miscellaneous
*   [Clock (customisable tick rate)](/clock.v)
*   [Clock Divider (customisable factor)](/clkDivider.v)
*   [D Latch](/dLatch.v)
*   [Memory](/memory.v)
*   [32 Bit LFSR - Pseudo Random Number Generator](/LFSR.v)
*   [Switch Debouncer](/switchDebouncer.v)
*   [8 Bit Wallace Tree Multiplier](/wallaceTreeMultiplier8Bit.v)
*   [Pattern Detector](/patternDetector.v)
*   [Two's Complementer](/twoComplementer.v)
*   [N Bit Shift Register (universal shift register)](/nBitShiftRegister.v)
*   [Typical Example of circuit with datapath and control unit](/designExampleDDMano.v)

## Contributing
Feel free to submit pull requests with more such modules. Do take a look at the [format of an accepted file](/CONTRIBUTING.md) before contributing.

## License
[MIT © Akilesh Kannan](/LICENSE)
