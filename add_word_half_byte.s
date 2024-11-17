.data
a:.word 0x12121212,0x21212121,0x33333333
b:.half 0x1212,0x2121,0x3333
c:.byte 0x12,0x21,0x33
.text
la x10,a
la x11,b
la x12,c
lw x13,0(x10)
lw x14,4(x10)
lw x15,8(x10)
add x16,x14,x15
add x16,x16,x13


lhu x13,0(x11)
lhu x14,2(x11)
lhu x15,4(x11)
add x17,x14,x15
add x17,x17,x13

lbu x13,0(x12)
lbu x14,1(x12)
lbu x15,2(x12)
add x18,x14,x15
add x18,x18,x13
