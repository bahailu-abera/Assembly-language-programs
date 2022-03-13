# program file: program16.asm
# Author: Bahailu Abera
# program which multiplies a user input by 10 using only bit shift operations and 
# addition

.text 
  addi $v0, $zero, 4
  la $a0, prompt
  syscall
  
  addi $v0, $zero, 5
  syscall


  move $t0, $v0
  
  sll $t1, $t0, 3 # multiply the number by 8
  sll $t2, $t0, 1 # multipy the number by 2
  add $t3, $t1, $t2
  
  addi $v0, $zero, 4
  la $a0, msg
  syscall
  
  addi $v0, $zero,1
  move $a0, $t3
  syscall
  
.data
   prompt: .asciiz "Enter the number:  "
   msg: .asciiz "The number you entered after multiplied by 10 is : "