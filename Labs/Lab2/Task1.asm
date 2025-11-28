.data
    MessageOne: .asciiz "Enter The First Number : "
    MessageTwo: .asciiz "Enter The Second Number : "
    MessageThree: .asciiz "Enter The Third Number : "
    MessageFour: .asciiz "Enter The Fourth Number : "
    newLine: .asciiz "\n"
    Result: .asciiz "The Average equals : "
.text
main:
    li $t0 , 0
    li $t1 , 4

    la $a0 , MessageOne
    li $v0 , 4
    syscall

    li $v0 , 5 
    syscall
    add $t0 , $t0 , $v0 
    
    la $a0 , newLine
    li $v0 , 4 
    syscall

    la $a0 , MessageTwo
    li $v0 , 4
    syscall

    li $v0 , 5 
    syscall
    add $t0 , $t0 , $v0 
    
    la $a0 , newLine
    li $v0 , 4 
    syscall

    la $a0 , MessageThree
    li $v0 , 4
    syscall

    li $v0 , 5 
    syscall
    add $t0 , $t0 , $v0 
    
    la $a0 , newLine
    li $v0 , 4 
    syscall

    la $a0 , MessageFour
    li $v0 , 4
    syscall

    li $v0 , 5 
    syscall
    add $t0 , $t0 , $v0 
    
    la $a0 , newLine
    li $v0 , 4 
    syscall

    div $t0, $t1 
    mflo $t2 

    la $a0 , Result
    li $v0 , 4
    syscall 

    move $a0 , $t2
    li $v0 , 1 
    syscall

    li $v0 , 10 
    syscall