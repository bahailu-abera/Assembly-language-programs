# program file : program15.asm
# Author: Bahailu Abera
# A program to calculate twos complement of a number 

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
   addi $s1, $s1, 1
   move $a0, $s1
   syscall
   
   
   
   
.data
  prompt: .asciiz "Please enter the number: "
  msg: .asciiz "The two's complement of the number you entered is:  "
  
