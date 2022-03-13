# Program file: program7.asm
# Author: Bahailu Abera
# program to sleep for 4 seconds before returned

.text 
  li $v0, 32
  li $a0, 4000
  syscall