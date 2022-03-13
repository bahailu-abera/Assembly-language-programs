# program file: progam2.asm
# Author: Bahailu Abera
# Program to read an integer number from a user, and
# Print that number back to the console.

.text 
   main: 
      # Prompt for the integer to enter 
      li $v0, 4
      la $a0, prompt 
      syscall 
      
      # Read the integer and save it in $S0
      li $v0, 5
      syscall
      move $s0, $v0
      
      # Output the text 
      li $v0 , 4
      la $a0, output
      syscall
      
      #Output the number 
      li $v0, 1
      move $a0, $s0
      syscall
      
      #Exit the program
      li $v0, 10
      syscall
.data
    prompt: .asciiz "Please enter an integer: "
    output: .asciiz "\nYou typed the number "