.data
Message: .asciiz "Enter a number: "
Result:.asciiz"\nFibonacci Number equals : "

.text
    main:
        addi $sp , $sp , -4
        sw $ra , 0($sp)

        la $a0 , Message
        li $v0 , 4
        syscall

        li $v0 , 5
        syscall

        move $a0 , $v0

        jal Fib

        move $t0,$v0
        li $v0 , 4
        la $a0 , Result
        syscall

        move $a0 , $t0 
        li $v0 , 1
        syscall

        lw $ra , 0($sp)
        addi $sp , $sp,4
        jr $ra

    Fib:
        addi $sp , $sp , -12
        sw $ra , 0($sp)   
        sw $a0 , 4($sp)     #store n
        sw $s0 , 8 ($sp)    

        li $t0 , 1 
        ble $a0 , $t0 , if
        j else

        if:         #base case
            move $v0 , $a0
            addi $sp ,$sp ,12
            jr $ra 
        else:   #recursive case
            addi $a0 , $a0 , -1    //Fib(n-1)
            jal Fib
            move $s0 , $v0    # s0 = fib(n-1)

            lw $a0 , 4($sp)
            addi $a0, $a0 , -2
            jal Fib

            add $v0 , $v0 , $s0 

            lw $s0 , 8 ($sp)
            lw $ra ,0($sp)
            addi $sp , $sp , 12
            jr $ra









