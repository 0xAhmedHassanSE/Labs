.data
    Message: .asciiz "Enter a number : "
    Positive: .asciiz "\nPositive "
    Negative: .asciiz "\n Negative "
    Zero: .asciiz "\nZero"

.text
main:
    la $a0, Message
    li $v0, 4
    syscall

    li $v0, 5 
    syscall

    move $t0, $v0 

Switch:
    bgtz $t0, PositiveCase
    bltz $t0, NegativeCase
    j DefaultCase

PositiveCase:
    la $a0, Positive
    li $v0, 4
    syscall
    j endSwitch 

NegativeCase:
    la $a0, Negative
    li $v0, 4
    syscall
    j endSwitch

DefaultCase:
    la $a0, Zero
    li $v0, 4
    syscall
    j endSwitch

endSwitch:
    li $v0, 10
    syscall