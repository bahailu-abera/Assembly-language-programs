# Program file: program8.asm
# Author: Bahailu Abera
# program to read and print floating number

.text 
   # prompt for input
   li $v0, 4
   la $a0, prompt
   syscall
   
   # Read floating number.
   li $v0, 6
   syscall
   mov.s $f1, $f0
   
   # print the message
   li $v0, 4
   la $a0, msg
   syscall
   
   # Display the entered number
   li $v0, 2
   mov.s $f12, $f1
   syscall
  
.data
  prompt: .asciiz "please enter a floating number"
  msg: .asciiz "The number you enterd is "