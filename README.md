# 🔧 Verilog Projects – Digital System Design in Vivado

Welcome to my Verilog HDL (Hardware Description Language) project repository! This collection showcases my digital system design work, developed and verified using **Xilinx Vivado**. Each project includes clean, modular Verilog code focused on real-world digital logic components.

---

## 📁 Repository Structure
verilog-projects/
│
├── voting-machine/       # Voting machine using debouncing and mode control
│   ├── src/              # Verilog source code
│   ├── tb/               # Testbenches
│   ├── Result/           # schematic,waveform
│
|   ├── RAM&ROM/          # Single port RAM using clocked synchronous design,Dual port RAM for simultaneous read/write, Read-only memory (ROM)
│   ├── src/              # Verilog source code
│   ├── tb/               # Testbenches
│   ├── Result/           # schematic,waveform
├── README.md             # Project documentation


## ✅ Completed Projects

### 🗳️ Voting Machine
A Verilog-based voting system with:
- **Debounced button control**
- **Vote tracking for 4 candidates**
- **Mode switching between vote and result display**
- **LED output for candidate vote counts**

### 💾 Single-Port RAM
- Synchronous single-port RAM (64 x 8-bit)
- One write or read per clock cycle
- Uses address register to hold the read address
- Clean and testable memory block

### 🔄 Dual-Port RAM
- Allows simultaneous read and write from different addresses
- Ideal for CPU-memory interactions or parallel systems
- Fully synchronous on both ports

### 📖 ROM (Read-Only Memory)
- Verilog ROM design using case statements or initial block
- Preloaded data for lookup tables or fixed instructions
- Can be extended for font data, instruction memory, etc.


## 📌 Author

**Vivek Bansal**  
Electronics and Communication Engineering  
Thapar Institute of Engineering & Technology  

> Passionate about digital hardware, embedded systems, and building intelligent control systems.


## 📜 License

This repository is open-source and available under the MIT License. Use, modify, or contribute freely.
