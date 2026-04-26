# 🚗 FPGA-Based Parking Lot Controller (FSM)

This project implements a **Parking Lot Controller** using Verilog on FPGA (Basys 3).
It uses **Finite State Machine (FSM)** design to manage vehicle entry and exit.


## 🔧 Features

* Detect car entry and exit using push buttons
* Count available parking slots
* Display slots on 7-segment display
* Prevent overflow and underflow
* FSM-based control logic

## 🧠 FSM Design

States used:

* IDLE
* ENTRY
* EXIT

---

## 🔢 Working

* Entry → decreases slot count
* Exit → increases slot count
* Reset → initializes slots

---

## 🛠️ Tools Used

* Xilinx Vivado
* Verilog HDL
* Basys 3 FPGA
---

## 🚀 Future Improvements

* Add debounce logic
* Add FULL indicator LED
* Extend to 2-digit display
* Use IR sensors instead of buttons

---

## 👨‍💻 Author

Shreyash Reddy
M.Tech (VLSI & Embedded Systems)
