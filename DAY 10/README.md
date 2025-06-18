# 📦 Verilog Projects – Shift Registers & FSMs (Part 10)

This repository contains foundational Verilog HDL designs focused on shift registers, master-slave flip-flops, and sequence detectors using Mealy and Moore FSMs.

---

## 📘 Included Projects

| No. | Project                                      | Description                                        |
|-----|----------------------------------------------|----------------------------------------------------|
| 46  | Parallel-In Serial-Out (PISO) Shift Register | Loads parallel input, shifts data serially         |
| 47  | Parallel-In Parallel-Out (PIPO) Shift Register | Loads and shifts data in parallel                 |
| 48  | Master-Slave D Flip-Flop                     | A level-sensitive D flip-flop using clock edges    |
| 49  | Mealy Sequence Detector                      | FSM detecting a sequence using Mealy architecture |
| 50  | Moore Sequence Detector                      | FSM detecting a sequence using Moore architecture |

---

## 🔍 Project Highlights

### 4️⃣6️⃣ PISO Shift Register

- **Inputs**: `clk`, `rst`, `ld`, `pin[3:0]`
- **Output**: `sout`
- **Logic**: Loads 4-bit parallel data and shifts it out serially on each clock.

📷 *Expected Output Preview*  
`[assets/piso_waveform.png]`

---

### 4️⃣7️⃣ PIPO Shift Register

- **Inputs**: `clk`, `rst`, `ld`, `pin[3:0]`
- **Output**: `pout[3:0]`
- **Logic**: Loads parallel input and shifts the entire register left.

📷 *Expected Output Preview*  
`[assets/pipo_waveform.png]`

---

### 4️⃣8️⃣ Master-Slave D Flip-Flop

- **Inputs**: `clk`, `rst`, `d`
- **Outputs**: `master`, `q`
- **Logic**: Master stores `d` on rising edge; slave updates `q` on falling edge.

📷 *Expected Output Preview*  
`[assets/master_slave_ff_waveform.png]`

---

### 4️⃣9️⃣ Sequence Detector – Mealy FSM

- **Inputs**: `clk`, `rst`, `in`
- **Output**: `out`
- **Logic**: Transition-based output based on current state and input (Mealy model).

📷 *Expected Output Preview*  
`[assets/seq_det_mealy_waveform.png]`

---

### 5️⃣0️⃣ Sequence Detector – Moore FSM

- **Inputs**: `clk`, `rst`, `in`
- **Output**: `out`
- **Logic**: Output depends solely on current state (Moore model).

📷 *Expected Output Preview*  
`[assets/seq_det_moore_waveform.png]`

---

## ▶️ Simulation Instructions

Use tools like **Icarus Verilog**, **ModelSim**, or **Vivado**.

### Example: Simulating PISO
```bash
iverilog -o tb_piso testbench/tb_piso.v verilog/piso.v
vvp tb_piso
