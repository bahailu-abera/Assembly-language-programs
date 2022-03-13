# program file : program14.asm
# Author: Bahailu Abera
# A program to optain the bitwise OR using exclusive or (xor) operation

.text 
   addi $v0, $zero, 4
   la $a0, prompt
   syscall
   
   addi $v0, $zero, 5
   syscall

   move $s0, $v0
   xori $s1, $s0, -1 
   
   addi $v0, $zero, 4
   la $a0, msg
   syscall
   
   addi $v0, $zero, 1
   move $a0, $s1
   syscall
   
   addi $v0, $zero, 1
   not $t0, $s0
   move $a0, $t0 
   syscall
   
   
   
.data
  prompt: .asciiz "Please enter the number: "
  msg: .asciiz "The negation of the number you entered is:  "
  
