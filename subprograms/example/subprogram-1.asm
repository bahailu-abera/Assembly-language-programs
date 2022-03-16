# program file : subprogram-1.asm
# Author: Bahailu Abera
# A program that implememt a subprogram Exit 
.text
	main:
		# prompt for input 
		addi $v0, $zero, 4
		la $a0, prompt
		syscall
		
		# Read integer from the user 
		addi $v0, $zero, 5
		syscall
		# Store the value as static at the register $s0
		move $s0, $v0
		
		# Display thr result text
		addi $v0, $zero, 4
		la $a0, result
		syscall
		
		# Display the entered number
		addi $v0, $zero, 1
		move $a0, $s0
		syscall
		
	        # call the exit subprogram 
	        jal Exit
		
.data
	prompt: .asciiz "\nplease enter the number"
	result: .asciiz "\nYou entered"
# subprogram Exit
# author: Bahailu Abera
# Purpose: To use syscall 10 to exit a program.
# input: None
# output: None
# side effects: The program is exited

.text
	Exit:
		li $v0, 10
		syscall
