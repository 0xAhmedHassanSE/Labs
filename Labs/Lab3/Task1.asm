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
        li $t1 , 0   #first
        li $t2 , 1   #second
        li $t0 , 0   #index

        for:
            beq $t0 , $a0 , endloop
            add $t3 , $t1 , $t2   #next = first + second
            move $t1 , $t2        # first = second
            move $t2 , $t3        #second  = next
            addi $t0 , $t0 ,1 
            j for
        endloop:

        move $v0 , $t3
        jr $ra


