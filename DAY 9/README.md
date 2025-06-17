# 🔁 Verilog Projects – Counters & Shift Registers (Part 9)

This repository contains a series of Verilog HDL projects focusing on sequential digital design — specifically counters and shift registers. These modules are fundamental building blocks in FPGA and ASIC digital systems.

---

## 📘 Included Projects

| No. | Project                               | Description                                     |
|-----|---------------------------------------|-------------------------------------------------|
| 41  | Synchronous Up/Down Counter           | 3-bit up/down counter based on `en` signal     |
| 42  | Johnson Counter                       | 4-bit twisted ring counter with serial feedback|
| 43  | Ring Counter using D Flip-Flops       | 4-bit basic circular counter                   |
| 44  | Serial-In Serial-Out (SISO) Shift Reg | Bitwise data stream shift to a serial output   |
| 45  | Serial-In Parallel-Out (SIPO) Shift Reg| Bitwise data shifted into parallel register    |

---

## 🔍 Project Highlights

### 4️⃣1️⃣ Synchronous Up/Down Counter
- **Inputs**: `clk`, `rst`, `en`
- **Output**: `out[2:0]`
- Counts up if `en = 1`, down if `en = 0`.

### 4️⃣2️⃣ Johnson Counter
- **Inputs**: `clk`, `rst`
- **Output**: `q[3:0]`
- Produces a 4-bit sequence using complement feedback.

### 4️⃣3️⃣ Ring Counter
- **Inputs**: `clk`, `rst`
- **Output**: `q[3:0]`
- Classic 4-state rotating counter using D flip-flops.

### 4️⃣4️⃣ SISO Shift Register
- **Inputs**: `clk`, `rst`, `sin`
- **Output**: `sout`
- Serially shifts bits across 4-bit register.

### 4️⃣5️⃣ SIPO Shift Register
- **Inputs**: `clk`, `rst`, `sin`
- **Output**: `pout[3:0]`
- Serial input fills a 4-bit parallel output.

---

## ▶️ Simulation Instructions

Use **Icarus Verilog**, **ModelSim**, or any compatible Verilog simulator.

### Example (Icarus Verilog)
```bash
# Compile
iverilog -o tb tb_sipo.v verilog/sipo.v

# Run
vvp tb
PLACEHOLDER