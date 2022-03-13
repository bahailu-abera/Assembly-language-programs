# PRogram file: program6.asm
# Author: Bahailu Abera
# program to print out random integer in the range 1 to 100

.text 
   li $v0, 42
   li $a1, 100
   syscall
   
   li $v0, 1
   syscall