# Getting Started with Verilog

This repository contains some verilog modules which are the elementary and fundamental building blocks of a digital circuit. It is best suited for those who are just getting started with Verilog.

**Table of Contents**
- [Modules](#modules)
  - [Flip Flops](#flip-flops)
  - [Adder Circuits](#adder-circuits)
  - [Counters](#counters)
  - [Multiplexers and De-Multiplexers](#multiplexers-and-de-multiplexers)
  - [Multipliers](#multipliers)
  - [Miscellaneous](#miscellaneous)
- [Usage and Installation](#usage-and-installation)
- [Contributing](#contributing)
- [License](#license)

## Modules
### Flip Flops
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
*   [N Bit Carry Look Ahead Adder](/Adders/nBitCarryLookAheadAdder.v)
*   [N Bit Ripple Carry Adder](/Adders/nBitRippleCarryAdder.v)

### Counters
*   [N Bit Counter (generic)](/Counters/nBitCounter.v)
*   [N Bit Johnson Counter](/Counters/nBitJohnsonCounter.v)

### Multiplexers and De-Multiplexers
*   [2<sup>n</sup> to 1 Multiplexer](/Multiplexers%20and%20De-Multiplexers/mux2nTo1.v)
*   [1 to 2<sup>n</sup> De-Multiplexer](/Multiplexers%20and%20De-Multiplexers/deMUX1To2n.v)

### Multipliers
*   [(8 Bit) Wallace Tree Multiplier](/Multipliers/wallaceTreeMultiplier8Bit.v)
*   [(4 Bit) Serial Parallel Multiplier](/Multipliers/serialParallelMultiplier4Bit.v)
*   [(4 Bit) Booth Multiplier](/Multipliers/boothMultiplier4Bit.v)


### Miscellaneous
*   [Clock (customisable tick rate)](/clock.v)
*   [Clock Divider (customisable factor)](/clkDivider.v)
*   [D Latch](/dLatch.v)
*   [Memory](/memory.v)
*   [32 Bit LFSR - Pseudo Random Number Generator](/lfsr.v)
*   [Switch Debouncer](/switchDebouncer.v)
*   [Pattern Detector](/patternDetector.v)
*   [Two's Complementer](/twoComplementer.v)
*   [N Bit Shift Register (universal shift register)](/nBitShiftRegister.v)
*   [Typical Example of circuit with datapath and control unit](/designExampleDDMano.v)
*   [N-Bit Barrel Shifter](/barrelShifterNBit.v)

## Usage and Installation
1. Clone this repository to local machine - `git clone https://github.com/aklsh/getting-started-with-verilog.git`.
2. cd into the repository - `cd getting-started-with-verilog/`
3. Edit the testbench in the file `testbench.v` by instantiating the module you want to check, and providing the stimulus in the initial block.
4. Run with `make`.

## Contributing
Feel free to submit pull requests with more such modules. Do take a look at the [format of an accepted file](/CONTRIBUTING.md) before contributing.

## License
[MIT © Akilesh Kannan](/LICENSE)
