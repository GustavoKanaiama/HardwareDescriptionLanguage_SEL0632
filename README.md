# RISC-V Single-Cycle Processor — SEL0632

> A 32-bit single-cycle RISC-V processor core implemented in VHDL, developed as part of the **Hardware Description Language (SEL0632)** coursework at the University of São Paulo (USP).

---

## Overview

This project implements a **single-cycle RISC-V RV32I processor** in VHDL, following the architecture described in *Digital Design and Computer Architecture: RISC-V Edition* (Harris & Harris). The design covers the full datapath and control unit, supporting a representative subset of the RV32I instruction set.

The processor was synthesized using **Intel Quartus Prime** (targeting a **MAX 10 FPGA** — 10M50DAF484C7G) and simulated using **ModelSim/Questa**.

---

## Architecture

The processor is organized into two top-level components: a **Controller** and a **Datapath**, which communicate through a set of control signals.

```
top
 ├── riscvsingle
 │    ├── controller
 │    │    ├── maindec      (Main Decoder)
 │    │    └── aludec       (ALU Decoder)
 │    └── datapath
 │         ├── flopr        (Flip-flop register — PC)
 │         ├── adder        (PC+4 and branch target)
 │         ├── mux2 / mux3  (Multiplexers)
 │         ├── regfile      (32×32-bit Register File)
 │         ├── extend       (Immediate Extender)
 │         └── alu          (Arithmetic Logic Unit)
 ├── imem                   (Instruction Memory — ROM)
 └── dmem                   (Data Memory — RAM)
```

---

## Test Program

The assembly test (`riscvtest.s`) exercises all supported instructions — arithmetic, logic, memory access, branch, and jump. A successful run writes the value **25** to memory address **100 (0x64)**. The testbench automatically validates this and reports `NO ERRORS: Simulation succeeded`.

---

## Synthesis Results

Synthesized on **Intel Quartus Prime 24.1** for the **Intel MAX 10 (10M50DAF484C7G)** FPGA:

| Resource | Used
|---|---
| Logic Elements | 6 
| Combinational Functions | 6 
| Dedicated Registers | 0
| Total Pins | 10 

> Individual modules compiled and synthesized successfully. Full-system integration encountered compatibility issues between `numeric_bit` and `numeric_std` packages during simulation, which were partially resolved through explicit type conversions.

---

## Tools

- **Language:** VHDL
- **Synthesis:** Intel Quartus Prime 24.1 Lite
- **Simulation:** ModelSim
- **Target Device:** Intel MAX 10 — 10M50DAF484C7G

---

## How to Run

**Simulation (ModelSim)**

1. Open ModelSim and create a new project.
2. Add all `.vhd` files from `riscvsingle/src/`.
3. Compile in dependency order: packages → primitives → datapath/controller → top → testbench.
4. Run simulation on `testbench`. Check the transcript for the pass/fail message.

**Synthesis (Quartus Prime)**

1. Open the project file `riscvsingle/quartus/riscvsingle.qpf`.
2. Run **Analysis & Synthesis**, then **Fitter** and **Assembler**.
3. Output files (`.sof`, `.pof`) are generated in `quartus/output_files/`.

---

## Course

**SEL0632 — Hardware Description Language**  
School of Engineering of São Carlos (EESC) — University of São Paulo (USP)

