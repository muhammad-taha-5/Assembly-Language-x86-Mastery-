# Assembly-Language-x86-Mastery-
"A semester-long portfolio showcasing mastery in C++ oop and x86 Assembly. Highlights high-grade lab achievements, clean architecture, and practical implementations.
<!-- ================================================== -->
<!--                  HERO SECTION                      -->
<!-- ================================================== -->

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:1e293b,100:334155&height=160&section=header&text=ASSEMBLY%20LANGUAGE%20(x86)%20LAB%20MASTERY&fontSize=40&fontAlignY=35&animation=fadeIn" width="100%" />
</p>

<h2 align="center">💻 Assembly Language (x86) Lab & OOP Mastery</h2>
<h4 align="center">Low-Level Logic • Optimized Computation • Machine-Level Implementation</h4>

<p align="center">
  👨‍💻 <strong>Developer:</strong> M. Taha Khuwaja (MTK)<br>
  🎓 Semester 3 / 4 – Advanced OOP & x86 Assembly Practice<br>
  🛠️ Visual Studio | NASM | GCC
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Language-C%2B%2B-00599C?style=for-the-badge&logo=c%2B%2B" />
  <img src="https://img.shields.io/badge/Language-Assembly-6e4c1b?style=for-the-badge&logo=assembly" />
  <img src="https://img.shields.io/badge/Paradigm-OOP_Low-Level-red?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Level-Advanced-blueviolet?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Status-Completed-success?style=for-the-badge" />
</p>

---

## 🏛️ Academic Excellence

<p align="center">
  <img src="https://img.shields.io/badge/OOP_Lab-A_Grade-success?style=for-the-badge&logo=c%2B%2B" />
  <img src="https://img.shields.io/badge/Assembly_Theory-B+_Grade-blue?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Assembly_Lab-A_Grade-success?style=for-the-badge" />
</p>

**Object-Oriented Programming (OOP):** Mastered scalable software design.  
**Assembly Language (x86):** Developed a deep "grip" on how software communicates with hardware, securing **A grade** in the lab for practical implementation.

---
## 🧠 Core Assembly (x86) Concepts Practiced

| Concept | Description | Implementation File |
| :--- | :--- | :--- |
| **Register Manipulation** | Using EAX, EBX, ECX, EDX to perform arithmetic, store intermediate results, and optimize computation. | `arithmetic.asm` |
| **Loops & Iteration** | Implementing FOR/WHILE-like loops using `LOOP` and labels to iterate over numbers or arrays. | `loop_sum.asm` |
| **Conditional Branching** | Using CMP, JE, JNE, JL, JG instructions to implement decision-making logic. | `max_number.asm` |
| **Memory Addressing** | Accessing data via direct, indirect, and base+offset addressing in the `.data` segment. | `array_ops.asm` |
| **Subroutines & Modular Code** | Writing reusable code blocks using `CALL` and `RET` for tasks like factorial, sum, and sorting. | `subroutines.asm` |
| **Input / Output Handling** | Reading user input and displaying results using system calls or interrupts, converting numbers to strings manually. | `io_operations.asm` |

---

## 📂 Assembly Lab Highlights

### 1. Register Manipulation & Arithmetic Operations
- Efficient use of **EAX, EBX, ECX, EDX** for addition, subtraction, multiplication, and division.
- Minimizes memory access, speeds up computation.

### 2. Loops & Iteration
- Implemented loops using labels and `LOOP` instructions.
- Example: Sum of numbers from 1 to N.


## 🟦 Assembly Language (x86) Lab Highlights

### 1. Register Manipulation & Arithmetic Operations
- **Registers Used:** EAX, EBX, ECX, EDX  
- **Purpose:** Stored intermediate values for calculations, minimized memory access for faster execution.  
- **Example Logic:**  
  - EAX holds the first number, EBX holds the second.  
  - Perform addition (`ADD EAX, EBX`), subtraction (`SUB EAX, EBX`), multiplication (`IMUL EBX`), and division (`DIV EBX`) at the register level.  

### 2. Loops & Iteration
- Implemented **FOR-like loops using labels and `LOOP` instructions**.  
- Example: Sum of numbers from 1 to N stored in memory.  
```asm
MOV ECX, N        ; Counter
MOV EAX, 0        ; Accumulator
loop_start:
  ADD EAX, ECX
  LOOP loop_start
