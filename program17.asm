# program file: program17.asm
# Author: Bahailu Abera
# A program to divide a user inpupt number by 8 by only using bit shifting 
.text
   # ask for input
   addi $v0, $zero, 4
   la $a0, prompt
   syscall
   
   # Read th input
   addi $v0, $zero, 5
   syscall
   move $s0, $v0
   
   # divided the number by 8
   sra $s1, $s0, 3
   
   # print the number
   addi $v0, $zero, 1
   move $a0, $s0
   syscall
   
   # print the message
   addi $v0, $zero, 4
   la $a0, msg
   syscall
   
   # print the result to the console
   addi $v0, $zero, 1
   move $a0, $s1
   syscall
   
.data
  prompt: .asciiz "plese enter the number"
  msg: .asciiz "  divided by 8 is equal to : " 