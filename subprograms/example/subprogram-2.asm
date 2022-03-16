# program file: subprogram-2.asm
# Author: Bahailu Abera
# A program to implement and call a subprogram named PrintNewLine

.text
    main:
        # Read input from the user
        addi $v0, $zero, 4
        la $a0, prompt
        syscall
        addi $v0, $zero, 5
        syscall
        move $s0, $v0
        
        # print the  value back to the user
        jal PrintNewLine
        li $v0, 4
        la $a0, result
        syscall
        li $v0, 1
        move $a0, $v0
        syscall
        
        # call the Exit subprogram to exit
        jal Exit
        
.data
    prompt: .asciiz "\n please enter an integer :"
    result: .asciiz "\n You entered :"
    

# subprogam: PrintNEwLine
# Author: Bahailu Abera
# purpose: to output a new line to the user console
# input: None
# output: None
# side effects: A new line character is printed to the user console

.text 
    PrintNewLine:
                li $v0, 4
                la $a0, __PNL_newline
                syscall
                jr $ra
.data
   __PNL_newline: .asciiz "\n"

# subprogram: Exit
# Author: bahailu Abera
# purpose: To use syscall service 10 to exit a program
# input: None
# output: None
# side effects: The program is exited

.text 
    Exit:
        li $v0, 10
        syscall
