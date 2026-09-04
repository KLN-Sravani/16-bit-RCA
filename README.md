# 16-Bit Ripple Carry Adder

## 📌 Overview

This project implements a **16-bit Ripple Carry Adder (RCA)** using sixteen 1-bit full adders. It adds two 16-bit binary numbers and produces a 16-bit sum along with a final carry output.

## ⚙️ Working Principle

The 16-bit Ripple Carry Adder consists of **16 full adders connected in series**. The carry output of each stage is connected to the carry input of the next stage, allowing the carry to propagate from the **Least Significant Bit (LSB)** to the **Most Significant Bit (MSB)**.

## 🔢 Inputs

- `A[15:0]` – First 16-bit binary input
- `B[15:0]` – Second 16-bit binary input
- `Cin` – Initial carry input

## 📤 Outputs

- `Sum[15:0]` – 16-bit sum output
- `Cout` – Final carry output

## 🧮 Logic Equations

For each bit `i` of the 16-bit RCA:

### Sum

$$
S_i = A_i \oplus B_i \oplus C_i
$$

### Carry

$$
C_{i+1} = A_iB_i + C_i(A_i \oplus B_i)
$$

The carry propagates sequentially through all 16 stages:

$$
C_0 \rightarrow C_1 \rightarrow C_2 \rightarrow \cdots \rightarrow C_{16}
$$

## 🏗️ Block Structure

```text
A[0]   B[0]   ──> FA0   ──> Sum[0]   ──> C1
A[1]   B[1]   ──> FA1   ──> Sum[1]   ──> C2
A[2]   B[2]   ──> FA2   ──> Sum[2]   ──> C3
  .      .          .          .          .
  .      .          .          .          .
A[14]  B[14]  ──> FA14  ──> Sum[14]  ──> C15
A[15]  B[15]  ──> FA15  ──> Sum[15]  ──> Cout
```

## ✨ Features

- 16-bit binary addition
- Built using 16 one-bit full adders
- Supports carry input and carry output
- Purely combinational design
- Demonstrates carry propagation
- Designed using Verilog HDL

## ⚠️ Limitation

The primary limitation of a Ripple Carry Adder is **carry propagation delay**, since the carry must propagate sequentially through each full-adder stage before the final result is available.

## 🎯 Applications

- Arithmetic Logic Units (ALUs)
- Digital processors
- Calculators
- Computer arithmetic circuits
- Digital system design

## 📁 Project Structure

```text
16-bit-ripple-carry-adder/
│
├── rtl/
│   └── ripple_carry_adder_16bit.v
│
├── tb/
│   └── ripple_carry_adder_16bit_tb.v
│
└── README.md
```

## 📜 License

This project is intended for **educational and academic purposes**.
