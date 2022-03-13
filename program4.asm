# Program file : program4.asm
# Author: bahailu Abera
# program to read the user favorite pie and 
# displats the users favorite pie back to the console.

.text 
  main:
     # prompt to enter their favorite pie
     li $v0, 4
     la $a0, prompt
     syscall
     
     # Read their favorite pie.
     li $v0, 8
     la $a0, input
     lw $a1, size
     syscall
     
     # Display the message
     li $v0, 4
     la $a0, msg1
     syscall
     
     #Display the pie
     li $v0, 4
     la $a0, input
     syscall
     
     # Dispaly the string pie
     li $v0, 4
     la $a0, msg2
     syscall
     
     #Exit the program
     li $v0, 10
     syscall
     
.data
    prompt: .asciiz "Please enter your favorite pie: "
    input: .space 41 
    size: .word 40
    msg1: .asciiz "\nSo you like "
    msg2: .asciiz " pie"
    
     
     