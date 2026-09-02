## 16-Bit Ripple Carry Adder## 📌 Overview
This project implements a 16-bit Ripple Carry Adder (RCA) using sixteen 1-bit full adders. It adds two 16-bit binary numbers and generates a 16-bit sum along with a final carry output.
## ⚙️ Working Principle
The 16-bit Ripple Carry Adder consists of 16 full adders connected in series. The carry output of each stage is connected to the carry input of the next stage, allowing the carry to ripple from the least significant bit (LSB) to the most significant bit (MSB).
## 🔢 Inputs

* A[15:0] – First 16-bit binary number
* B[15:0] – Second 16-bit binary number
* Cin – Initial carry input

## 📤 Outputs

* Sum[15:0] – 16-bit sum output
* Cout – Final carry output

## 🧮 Logic Equations

* Sum = $A \oplus B \oplus Cin$
* Cout = $(A \& B) \vert{} (Cin \& (A \oplus B))$

## 🏗️ Block Structure

A[0]  B[0]  ──> FA0  ──> Sum[0]  ──> C1
A[1]  B[1]  ──> FA1  ──> Sum[1]  ──> C2
A[2]  B[2]  ──> FA2  ──> Sum[2]  ──> C3
.     .         .         .          .
.     .         .         .          .
A[14] B[14] ──> FA14 ──> Sum[14] ──> C15
A[15] B[15] ──> FA15 ──> Sum[15] ──> Cout

## ✨ Features

* 16-bit binary addition
* Uses 16 one-bit full adders
* Supports carry input and carry output
* Simple combinational circuit
* Demonstrates carry propagation

## ⚠️ Limitation
The main limitation is carry propagation delay because the carry must pass through each full adder sequentially.
## 🎯 Applications

* Arithmetic Logic Units (ALUs)
* Digital processors
* Calculators
* Computer arithmetic circuits
* Digital system design

## 📁 Project Structure

16-bit-ripple-carry-adder/
├── rtl/
│   └── ripple_carry_adder_16bit.v
├── tb/
│   └── ripple_carry_adder_16bit_tb.v
└── README.md

## 📜 License
This project is intended for educational purposes.
------------------------------
If you'd like, let me know:

* If you want actual Verilog or SystemVerilog source code written for these modules
* If you need a testbench script to simulate the adder
* If you want to include timing constraints for synthesis

I can provide the code blocks ready to be pasted into your project!

