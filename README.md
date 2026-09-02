16-Bit Ripple Carry Adder
📌 Overview

This project implements a 16-bit Ripple Carry Adder (RCA) using sixteen 1-bit full adders. It adds two 16-bit binary numbers and generates a 16-bit sum along with a final carry output.

⚙️ Working Principle

The 16-bit Ripple Carry Adder consists of 16 full adders connected in series. The carry output from each full adder is passed to the next stage. The carry continues to propagate from the least significant bit to the most significant bit.

🔢 Inputs
A[15:0] – First 16-bit binary number
B[15:0] – Second 16-bit binary number
Cin – Initial carry input
📤 Outputs
Sum[15:0] – 16-bit addition result
Cout – Final carry output
🧮 Logic Equations
Sum  = A ⊕ B ⊕ Cin
Cout = (A & B) | (Cin & (A ⊕ B))

🏗️ Block Structure
A0  B0   → FA0   → S0   → C1
A1  B1   → FA1   → S1   → C2
A2  B2   → FA2   → S2   → C3
   .        .       .
   .        .       .
A14 B14  → FA14  → S14  → C15
A15 B15  → FA15  → S15  → Cout

✨ Features
16-bit binary addition
Built using 16 full adders
Supports carry input and carry output
Simple and easy-to-understand architecture
Demonstrates RTL and digital logic design
⚠️ Limitation

The main limitation of a Ripple Carry Adder is carry propagation delay. Since the carry must pass through each full adder sequentially, the delay increases as the bit width increases.

🎯 Applications
Arithmetic Logic Units (ALUs)
Digital processors
Calculators
Computer arithmetic circuits
Digital system design
📁 Project Structure
16-bit-ripple-carry-adder/
├── rtl/
│   └── ripple_carry_adder_16bit.v
├── tb/
│   └── ripple_carry_adder_16bit_tb.v
└── README.md

📜 License

This project is intended for educational and learning purposes.
