.data
array: .word 10,20,30,40,50
size: .word 5
search: .word 20
result:.word -1
.text
la x10,array
lw x11,size
lw x12,search
li x13,0
li x15,-1
search_loop:beq x13,x11,exit
            lw x14,0(x10)
            beq x14,x12,found
            addi x10,x10,4
            addi x13,x13,1
            j search_loop
found:addi x15,x13,0
      la x16,result
      sw x15,0(x16)
      j end
exit:sw x15,0(x16)
end:nop
      