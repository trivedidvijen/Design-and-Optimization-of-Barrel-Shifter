# Design and Optimization of Barrel Shifter

## Introduction

This project was developed as part of Mini Project for my B.Tech in Electronics and Telecommunications Engineering at [K. J. Somaiya College of Engineering, Mumbai](https://kjsce.somaiya.edu/en) during *Spring 2017*. This project was developed using [Xilinx ISE Design Suite 14.7](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/archive-ise.html) and [ISim](https://www.xilinx.com/products/design-tools/isim.html) using [Verilog](https://en.wikipedia.org/wiki/Verilog).

Project Guide: [Prof. Ruchira A Jadhav](https://kjsce.somaiya.edu/en/view-member/160154?type=faculty)

## Abstract

Barrel shifters are arithmetic and logic circuits that are used to rotate and shift data in a general purpose microprocessor. This project focusses on various design approaches to implement barrel shifters and select particular design based on application and use.

Designs are compared with respect to two parameters viz. Area (gate count) and Latency (Delay). A term Area Delay Product was defined to give logical comparisons among various designs. Designs can be broadly classified into two categories: unidirectional and bidirectional. Mux based, Mask based and Data reversal design approaches were used.

Designs operated on data of 8 bits (byte). First a unidirectional Right Shifter and Right Rotator were designed. Similarly, a Left Shifter and Rotator were designed. Next bidirectional designs were explored starting with a Series, Parallel, Data Reversal and One’s Complement based designs. Series, Parallel and Data Reversal designs were used to implement bidirectional shifters. All three designs were compared in terms of Area Delay Product. One’s Complement design was used to implement bidirectional rotator. Finally, a Masking based design was suggested to implement bidirectional shifter and rotator.

As a generalization 8-bit data is represented as “abcdefgh”. Each of the letters a to h can take the binary value 0 or 1.

Designs were implemented and simulated using Xilinx ISE 14.7 and ISim using Verilog.

## Design Code Files and Simulation Results

Refer to all design code files within [ISE](./ISE/) folder of repository.

Refer to all simulation results within [Simulations](./Simulations/) folder of repository.

## Project Report

Refer to [Project Report.pdf](./Project%20Report.pdf) for detailed report on design, implementation and simulation results of all 7 designs for both unidirectional and bidirectional barrel shifters and rotators.

## Conclusion

Area Delay Product proves to be an efficient parameter to determine the cost and select an appropriate design suitable to ones need and application. A complete barrel shifter provides means to achieve all four operations viz. Right Rotate, Left Rotate, Logical Right Shift and Logical Left Shift as in case of Masking Rotating Shifter. But all of this operations might not be always desired. In such cases other mentioned designs can be used to suit ones need.

## Future Work

Having designed a Barrel Shifter, I hope to take up the next step towards building a microprocessor. As in case of ARM architecture Barrel Shifter can be used outside the Arithmetic and Logical Unit (ALU) to provide fast and efficient shift and rotate results frequently required in processor applications. Designing a pipelined architecture, Fast adders, Multipliers are some of the tasks we hope to take in future. Also instead of just limiting to terminal level of design process using a Hardware Description Language I hope to work at layout level too using CAD tools like Microwind in future.

## References

### Theses and Dissertations

1. 2001, Barrel shifter design, optimization, and analysis by Matthew Rudolf Pillmeier Lehigh University

### Books

1. Digital Design With an Introduction to the Verilog HDL, FIFTH EDITION, M. Morris Mano and Michael D. Ciletti, Pearson.

### Manuals

1. ISE Simulator (ISim) In-Depth Tutorial UG682 (v1.0) April 27, 2009, Xilinx

### Websites and Forums

1. http://www.asic-world.com/verilog/
2. https://electronics.stackexchange.com/