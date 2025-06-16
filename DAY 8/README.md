# ⏱️ Verilog Projects – Flip-Flops & Counters (Part 8)

This repository showcases essential sequential logic components in Verilog, covering core flip-flops and a 4-bit asynchronous counter built from T flip-flops.

---

## 📘 Included Projects

| No. | Project                              | Description                                  |
|-----|--------------------------------------|----------------------------------------------|
| 36  | JK Flip-Flop                         | JK-controlled toggle flip-flop               |
| 37  | D Flip-Flop                          | Simple data flip-flop                        |
| 38  | T Flip-Flop                          | Toggle flip-flop with reset                  |
| 39  | D Latch                              | Transparent latch activated by enable        |
| 40  | 4-bit Asynchronous Counter (T-FF)    | Ripple counter using T flip-flops            |

---

## 🔍 Project Details

### 3️⃣6️⃣ JK Flip-Flop

- **Inputs**: `j`, `k`, `clk`
- **Output**: `q`
- **Logic**: Set-Reset-Toggle logic based on `jk` values.

📷 *Expected Output Preview*  
`[assets/jk_flipflop_waveform.png]`

---

### 3️⃣7️⃣ D Flip-Flop

- **Inputs**: `d`, `clk`
- **Output**: `q`
- **Logic**: Samples `d` on rising edge of `clk`.

📷 *Expected Output Preview*  
`[assets/d_flipflop_waveform.png]`

---

### 3️⃣8️⃣ T Flip-Flop

- **Inputs**: `t`, `clk`, `rst`
- **Output**: `q`
- **Logic**: Toggles output when `t = 1` and `clk` rising, reset support.

📷 *Expected Output Preview*  
`[assets/t_ff_waveform.png]`

---

### 3️⃣9️⃣ D Latch

- **Inputs**: `d`, `en`
- **Output**: `q`
- **Logic**: Transparent latch when `en` is high.

📷 *Expected Output Preview*  
`[assets/d_latch_waveform.png]`

---

### 4️⃣0️⃣ Asynchronous 4-bit Counter using T Flip-Flops

- **Inputs**: `clk`, `rst`
- **Outputs**: `q[3:0]`, `qo[3:0]`
- **Logic**: Uses chained T flip-flops with reset to count asynchronously.

📷 *Expected Output Preview*  
`[assets/asyn_counter_waveform.png]`

---

## ▶️ Simulation Instructions

Simulate with **Icarus Verilog**, **ModelSim**, or any HDL-compatible tool.

### Example (Icarus Verilog)
```bash
iverilog -o tb tb_asyn_coun_t_ff.v verilog/asyn_coun_t_ff.v
vvp tb
PLACEHOLDER