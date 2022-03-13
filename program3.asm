# Program File: program3.asm
# Author: Bahailu Abera
# Program to read a string from a user, and 
# print that string back to the console.

.text
   main:
       # prompt for the string to enter
       li $v0, 4
       la $a0, prompt
       syscall
       
       # Read the string.
       li $v0, 8
       la $a0, input 
       lw $a1, inputSize 
       syscall
       
       # Output the messsage
       li $v0, 4
       la $a0, output
       syscall
       
       # Output the text
       li $v0, 4
       la $a0, input 
       syscall
       
       # Exit the program
       li $v0, 10
       syscall
      
.data
     input:  .space 9
     inputSize:  .word 10
     prompt: .asciiz "Please enter an string: "
     output:  .asciiz "\nYou typed the string: "








    
    