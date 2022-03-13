# program file: progeam19.asm
# Author: Bahailu Abera
# a Program to swap two number without using temporary variable

.text 
    # prompt for the first number
    addi $v0, $zero, 4
    la $a0, num1
    syscall
    
    # Read the first number
    addi $v0, $zero, 5
    syscall
    move $s0, $v0
    
    # prompt for the second number
    addi $v0, $zero, 4
    la $a0, num2
    syscall
    
    # Read the second number
    addi $v0, $zero, 5
    syscall
    move $s1, $v0
    
     # print msg for num1 before swapping
    addi $v0, $zero, 4
    la $a0, before_num1
    syscall
    
    # print num1 before swapping
    addi $v0, $zero, 1
    move $a0, $s0
    syscall
    
    # print msg for num2 before swapping
    addi $v0, $zero, 4
    la $a0, before_num2
    syscall
    
    # print num2 beofore swapping
    addi $v0, $zero, 1
    move $a0, $s1
    syscall
    
    
    xor $s0, $s0, $s1  # 
    xor $s1, $s1, $s0  # swap the $s0 to $s1
    xor $s0, $s0, $s1  # swap the $s1 to $s0
    
   
    
    # print msg for num1 after swapping
    addi $v0, $zero, 4
    la $a0, after_num1
    syscall
    
    # print num1 after swapping
    addi $v0, $zero, 1
    move $a0, $s0
    syscall
    
    # print msg for num2 after swapping
    addi $v0, $zero, 4
    la $a0, after_num2
    syscall
    
    # print num2 beofore swapping
    addi $v0, $zero, 1
    move $a0, $s1
    syscall

.data
    num1: .asciiz "please enter the first number: "
    num2: .asciiz "Please enter the next number: "
    before_num1: .asciiz "Before swapping first number =" 
    before_num2: .asciiz " and last number = "
    after_num1: .asciiz "\nAfter swapping first number =" 
    after_num2: .asciiz " and last number = "
     