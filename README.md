# Low Power Flip-Flop using MTCMOS and C-Element

## 📌 Overview
This project implements a **low-power D flip-flop** using:
- **MTCMOS (Multi Threshold CMOS)** for leakage reduction  
- **Muller C-element** for pulse generation and stability  

This design reduces switching activity and improves power efficiency in sequential circuits.

## 🧠 Key Concepts
### ✔ MTCMOS
- Reduces leakage by introducing sleep transistors  
- Helps achieve low-power operation during idle mode  

### ✔ C-Element
- Produces stable output only when both inputs agree  
- Helps avoid unnecessary transitions  
- Enhances low-power behavior  

## 📁 Files
- `celement.v` – C-element implementation  
- `flipflop.v` – MTCMOS-based flip-flop using C-element  
- `flipflop_tb.v` – Testbench  

## 🛠 Tools Used
- ModelSim  
- Cadence Virtuoso (concept simulation)  
- EDA Playground  

## 🎯 Learning Outcomes
- Low-power digital design  
- Use of sleep transistors  
- Pulse-based clocking  
- Sequential circuit optimization  

