# program file: subprogram-3.asm
# Author: Bahailu Abera
# A program to implement and call a subprogram named PrintNewLine
# with two parameter passed for PrintInt subprogram
# and returning value from the subprogram 
.text
main:
 # read an input value from the user
 la $a0, prompt
 jal PromptInt
 move $s0, $v0

 # print the value back to the user
 jal PrintNewLine
 la $a0, result
 move $a1, $s0
 jal PrintInt
 
 # call the Exit subprogram to exit
 jal Exit
.data
 prompt: .asciiz "Please enter an integer: "
 result: .asciiz "You entered: "
# subprogram: PrintNewLine
# author: Charles Kann
# purpose: to output a new line to the user console
# input: None
# output: None
# side effects: A new line character is printed to the 
# user's console
.text
PrintNewLine:
 li $v0, 4
 la $a0, __PNL_newline
 syscall 
 jr $ra
.data
 __PNL_newline: .asciiz "\n"
# subprogram: PrintInt
# author: Charles W. Kann
# purpose: To print a string to the console
# input: $a0 - The address of the string to print.
# $a1 - The value of the int to print
# returns: None
# side effects: The String is printed followed by the integer value.
.text
PrintInt: 
 # Print string. The string address is already in $a0
 li $v0, 4
 syscall
 
 # Print integer. The integer value is in $a1, and must
 # be first moved to $a0.
 move $a0, $a1
 li $v0, 1
 syscall
 
 #return
 jr $ra
 
# subprogram: PromptInt
# author: bahailu Abera
# purpose: to print for the user an integer input, and
#            to return the value for the caller
# input: $a0 - The address of the string to print.
# returns: $v0 - The value the user entered
# side effects: The String is printed followed by the integer value.
.text 
    PromptInt:
             # print the prompt in register $a0
             addi $v0, $zero, 4
             syscall
             
             # Read the integer value. Note that at the end of the 
             # syscall the value is already in $v0, so there is no need to move it anywhere
             li $v0, 5
             syscall
             
             # return
             jr $ra
             
.text
Exit:
 li $v0, 10
 syscall
