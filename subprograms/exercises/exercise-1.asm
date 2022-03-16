# program file: exercise-1.asm
# Author: bahailu abera
# purpose: To do arthimetic operation NOR, NAND, NOT, Mult, 
# Swap, RightCircularShift, leftCircularShift, toUpper and toLower

.text 
   main:
       # prompt for the first number
       li $v0, 4
       la $a0, prompt1
       syscall
       # Read the first number and save in $s0.
       li $v0, 5
       syscall
       move $s0, $v0
       
       # prompt for the next number
       li $v0, 4
       la $a0, prompt2
       syscall
       # Read the next number and save in $s1
       li $v0, 5
       syscall
       move $s1, $v0
       
       # pass the two values for the NOR subprogram 
       move $a0, $s0
       move $a1, $s1
       jal NorSubProgam
       # print the string (Result)
       li $v0, 4
       la $a0, result
       syscall
       # print the result value back to the user
       # Not the value returend from the subprogram is stored in $t2
       # so we move the value the $a0 to display.
       move $a0, $t2
       li $v0, 1
       syscall
       
       # pass the two parameter for the subprogram
       move $a0, $s0
       move $a1, $s1
       jal NandSubProgram
       # print the string (Result)
       li $v0, 4
       la $a0, result
       syscall
       # print the result value back to the user
       # Not the value returend from the subprogram is stored in $t2
       # so we move the value the $a0 to display.
       move $a0, $t2
       li $v0, 1
       syscall
       
       jal Exit
       
       
.data
   prompt1: .asciiz "\nPlease enter the first number : " 
   prompt2: .asciiz "\nPlease enter the next number : " 
   result: .asciiz "\nThe result of the operation is: "
.include "utils.asm"
   
