# Program file : program9.asm
# Author: Bahailu Abera
# program to read and display string using dialog box

.text 
  li $v0, 54
  la $a0, prompt
  la $a1, input
  la $a2, size
  syscall
  
  li $v0, 59
  la $a0, msg
  la $a1, input
  syscall
  
  
  
  
 .data
   input: .space 21
   size: .word 20
   prompt: .asciiz "please enter a string"
   msg: .asciiz "The string you entered is: "