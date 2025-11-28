.data
    FirstMessage: .asciiz "Enter the number of times that you want :   "
    SecondMessage: .asciiz "Enter the number : "
    newLine: .asciiz "\n"
    Result: .asciiz "The Average equals : "

.text
main:
    li $v0, 4
    la $a0, FirstMessage
    syscall

    li $v0, 5 
    syscall
    move $t0, $v0  # t0 -> n 

    la $a0, newLine
    li $v0, 4
    syscall

    li $t1, 0  # index
    li $t2, 0  # sum

for:
    beq $t1, $t0, endLoop

    la $a0, SecondMessage
    li $v0, 4
    syscall

    li $v0, 5 
    syscall 

    add $t2, $t2, $v0 

    la $a0, newLine
    li $v0, 4
    syscall
    
    addi $t1, $t1, 1    

    j for 

endLoop:
    div $t2, $t0            # Average = sum / count 
    mflo $t3                # $t3 = floor(Average) 

    la $a0, Result
    li $v0, 4
    syscall 

    move $a0, $t3
    li $v0, 1 
    syscall

    li $v0, 10 
    syscall