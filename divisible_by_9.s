.data
divident:.word 18
.text
la x10,divident 
lw x6,0(x10)
addi x5,x0,9
remu x7,x6,x5
beq x7,x0,divisible
addi x20,x0,0                #if not divisible x20=0
beq x0,x0,exit
divisible:addi x20,x0,0xff   #if divisible x20=0xff
exit:sb x20,4(x10)