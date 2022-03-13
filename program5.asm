# Program File: program5.asm
# Author: Bahailu Abera
# program to play a middle "C" for 1 second as a reed 
# instrument using the Musical Instrument Digital Interface (MIDI) services.

.text 
   li $v0, 33
   li $a0, 62
   li $a1, 1000
   li $a2, 64
   li $a3, 34
   syscall