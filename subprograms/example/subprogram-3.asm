# program file: subprogram-3.asm
# Author: Bahailu Abera
# A program to implement and call a subprogram named PrintNewLine with passing a parammeter to the program

.text
    main:
        # Read input from the user
        la $a0, prompt
        jal PrintString
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
   
       syscall
        
# subprogram: PrintString
# author: bahailu abera
# purpose: To print a string to the console
# input: $a0, The address of the string to print
# ooutput: None
# side effects: The string is printed to the console
.text
    PrintString:
               addi $v0, $zero, 4
               syscall
               jr $ra
               


# subprogram: Exit
# Author: bahailu Abera
# purpose: To use syscall service 10 to exit a program
# input: None
# output: None
# side effects: The program is exited

.text 
    Exit:
        li $v0, 10
 