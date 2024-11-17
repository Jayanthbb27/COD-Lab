# PROGRAM 1:
### STATEMENT : Converting a 32-bit value from little endian to big endian format using RISC-V assembly

### NAME OF THE FILE:
little_to_big_endian.s

### OBSERVATION -EXPLANATION 
This program performs a byte-level manipulation to convert a 32-bit little-endian value into a big-endian value.
The program uses bitwise operations to extract individual bytes and rearrange them:
andi extracts the least significant byte (0x78).
srli shifts the value right by 8 bits to bring the next byte into the LSB position.
slli shifts extracted bytes into their correct positions for the big-endian format.

### OBSERVATION - SINGLE CYCLE
 Cycles    : 17
 Frequency : 6.21Hz
 CPI       : 1
 IPC       : 1

### OBSERVATION - 5 STAGE 
 Cycles    : 22
 Frequency : 6.49Hz
 CPI       : 1.29
 IPC       : 0.773

### MEMORY MAPPING 
0x10000004 : 0x78563412
0x10000000 : 0x12345678

### REGISTER MAPPING 
x10 : 0X10000000
x13 : 0x78560000
x14 : 0x00003412
x15 : 0x78563412

### SNAPSHOT



# PROGRAM 2:
### STATEMENT : ASSEMBLY PROGRAM FOR ADDITION OF TWO 64-BIT NUMBER ON RV32I

### NAME OF FILE:
add_2_64_bit.s

### OBSERVATION -EXPLANATION 
This RISC-V assembly program performs a series of operations on two 64-bit double-word values stored in memory, treating them as collections of four 32-bit words. 
The program splits each 64-bit value into two 32-bit chunks (lower and upper).
It adds the lower 32 bits first and propagates any carry to the upper bits using the unsigned overflow flag (x16).

### OBSERVATION - SINGLE CYCLE
 Cycles    : 13
 Frequency : 5.71Hz
 CPI       : 1
 IPC       : 1

### OBSERVATION - 5 STAGE
 Cycles    : 17
 Frequency : 7.63Hz
 CPI       : 1.31
 IPC       : 0.765

### MEMORY MAPPING
0x100000014 : 0x00000000
0x100000010 : 0x99999999
0x10000000c : 0x20000000
0x100000008 : 0x87654321
0x100000004 : 0x10000000
0x100000000 : 0x12345678

### REGISTER MAPPING
x10 : 0x10000000
x11 : 0x12345678
x12 : 0x10000000
x13 : 0x87654321
x14 : 0x20000000
x15 : 0x99999999
x16 : 0x00000000
x17 : 0x30000000
x18 : 0x00000000
x19 : 0x30000000

### SNAPSHOT