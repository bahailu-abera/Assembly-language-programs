# file : utils.asm
# purpose: To define utilities used in the  arthimetic  mips program.
# Author: Bahailu Abera
# Title to and ownership of all intellectual property rights 
# in this file are the exclusive property of 
# Bahailu Abera , AAiT Ethiopia
# 
# subprogram index: 
#           Exit :-  Call syscall with a server 10 to exit the program
#           NorSubProgam :- 
#
#
# Modification History
#      Monday, march 14, 2022 - Intial Release



# subprogram : NorSubProgram
# Author: bahailu abera
# purpose: take two input parameters, and return the NOR operation on 
#              those two parameter.
# input:     $a0 - the first number value
#            $a1 - the next number value
# return : the nor operation of the first number and the second number 
# side effects: the NOR loogical operation is performed 
.text 
    NorSubProgam:
                # store thefirst number in $t0
                move $t0, $a0
                # store the next number in $t1
                move $t1, $a1
                nor $t2, $t0, $t1
                jr $ra
 
 
# subprogram : NandSubProgram
# Author: bahailu abera
# purpose: take two input parameters, and return the NAND operation on 
#              those two parameter.
# input:     $a0 - the first number value
#            $a1 - the next number value
# return : the NAND operation of the first number and the second number 
# side effects: the NAND loogical operation is performed on the two parameter .
.text 
    NandSubProgram:
                # store thefirst number in $t0
                move $t0, $a0
                # store the next number in $s1
                move $t1 $a1
                and $t2, $t0, $t1
                not $t2, $t2
                # return the value 
                jr $ra
                
# subprogram: Exit
# Author : bahailu abera
# purpose : to use syscall service 10 to exit a program
# input: None
# output: None
# side Effect: the program exited 
.text 
    Exit: 
       li $v0, 10
       syscall
                 
