# Pipeline-Implementation-of-a-processor
This project demonstrates a 5-stage pipelined processor architecture inspired by both RISC-V and MIPS32 instruction set architectures. The processor is implemented using Verilog HDL with a focus on functional simulation and clarity of logic over structural fidelity.

# What is Pipelining?
Pipelining is a technique used in modern processors to improve instruction throughput by overlapping the execution of multiple instructions. It breaks down the execution path into multiple stages, allowing each stage to handle a different instruction simultaneously — similar to an assembly line.

# Why Use Pipelining?
- Improves instruction throughput <br>

- Reduces instruction latency per stage <br>

- Enhances CPU performance without increasing clock speed <br>

- Allows efficient utilization of hardware resources <br>

- Increases speed without much increase in cost. <br>

By allowing multiple instructions to be processed at different stages of execution at the same time, pipelining enables faster and more efficient processor designs.

# Project Highlights
- Architecture: Hybrid of RISC-V and MIPS32 <br>

- Pipeline Stages: <br>

  - IF – Instruction Fetch <br>

  - ID – Instruction Decode <br>

  - EX – Execute <br>

  - MEM – Memory Access <br>

  - WB – Write Back <br>

-  Development Approach: <br>

  - High-level behavioral modeling using Verilog HDL <br>

  - Focused on functionality and correctness <br>

  - Simplified structure for fast simulation and testing <br>

-  Modular Design: <br>

  - Instruction Memory <br>

  - Register File <br>

  - ALU <br>

  - Data Memory <br>

  - Control Unit <br>

  - Pipeline Registers between stages <br>

# Testing & Simulation
All modules were simulated using behavioral testbenches. <br>

Emphasis on correct instruction flow across all five pipeline stages. <br>

# Future Enhancements
- Data Hazard Detection and Forwarding Unit <br>

- Branch Prediction Mechanism <br>

- Integration with real RISC-V instruction sets <br>

- Structural RTL implementation for synthesis <br>

