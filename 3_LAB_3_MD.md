# PROGRAM 1:
###STATEMENT : ASSEMBLY PROGRAM TO CHECK IF A NUMBER IS A 2 OUT OF 5 NUMBER

### NAME OF FILE :
two_out_of_five.s

###OBSERVATION -EXPLANATION 
This program checks if the given 8-bit number is a 2 out of 5 number or not. A number is called so if it satisfies two conditions, 1) Most significant 3 bits of given number must be 0. 2) provided condition 1 is true, number of 1's in least significant 5 bits should be 2.

###OBSERVATION -SINGLE STAGE
 Cycles    : 38
 Frequency : 5.99Hz
 CPI       : 1
 IPC       : 1

###OBSERVATION - 5 STAGE 
 Cycles    : 59
 Frequency : 5.59Hz
 CPI       : 1.55
 IPC       : 0.644

### MEMORY MAPPING
0x10000000 : 0x00000012

### REGISTER MAPPING
X20 : 0X00000001




#PROGRAM 2:
### STATEMENT: ASSEMBLY PROGRAM TO ENCODE A NUMBER USING HAMMING CODE

### NAME OF FILE:
hamming_code.s

###OBSERVATION -EXPLANATION 
he code computes the even parity bit for an 8-bit number.
Final output (x10):
0: Even number of 1s.
1: Odd number of 1s.
For num = 0xA2 (binary: 10100010), the parity bit is 1 (odd number of 1s).

###OBSERVATION - SINGLE STAGE 
 Cycles    : 13
 Frequency : 5.41Hz
 CPI       : 1
 IPC       : 1

###OBSERVATION - 5 STAGE
 Cycles    : 18
 Frequency : 5.29Hz
 CPI       : 1.38
 IPC       : 0.722

### MEMORY MAPPING 
0x10000000 : 0x000000a2
0x0ffffffe : 0x00000000

### REGISTER MAPPING
x1  : 0x10000000
x2  : 0xffffffa2
x3  : 0x93ffff83
x4  : 0x7fffffd1
x5  : 0x1ffffff4
x6  : 0x0ffffffa
x7  : 0x03fffffe
x10 : 0x00000001


