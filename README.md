# Building-A-Computer-From-First-Principles
 Building a modern computer from first principles

This is a project I have started to practice of bit of VHDL whilst revising computer architecture and gradually learning about compilers and operating systems. 

Firstly I'll focus on building the hardware platform of a simpler computer. After that I aim to create a multi-tier software heiarchy, with the end goal of making my own object-based programming language and my own operating system. Essentially, I am starting with simple logic and abstracting further and further.

# Hardware
I will be using the [Basys 3 Board](https://digilent.com/reference/programmable-logic/basys-3/start), an educational development board that uses the Artix-7 FPGA. 


##### Hack Architecture
The Hack platform is a 16-bit von Neumann machine designed to execute programs written in the Hack machine language. To do so, the Hack platform consists of a CPU, two separate memory modules serving as instruction and data memory and two memory-mapped I/O devices: a screen and keyboard.  

###### CPU
The Hack CPU consists of an ALU and three registers named Data (D), Address (A) and Program Counter (PC). The D register is solely for storing data values. The A register is used for storing data, selecting an address in the instruction memory, or selecting an address in data memory. 

The CPU is designed to execute instruction written in Hack machine language. With the A-instruction, 16 bits of the instruction are treated as a binary vale which is loaded into the A register. In case of a C-instruction, the instruction is treated as a capsule of control bits that specify various micro-operations to be performed by various parts of the CPU.  
