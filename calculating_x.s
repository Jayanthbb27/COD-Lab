.data
num:.word 0x12345678,0x24537634,0x34517638,0x34561723,0x19201889,0x00234165
.text
la x10,num
lw x11,0(x10)
lw x12,4(x10)
lw x13,8(x10)
lw x14,12(x10)
lw x15,16(x10)
lw x16,20(x10)
add x17,x11,x12
sub x18,x13,x14
add x19,x15,x16
sub x20,x19,x14
add x20,x20,x18
sub x20,x17,x20
