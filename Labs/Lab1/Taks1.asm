.data 

    Name : .asciiz "Name :      " 
    myName : .asciiz "Ahmed Hassan Mohamed/n"
    Id : .asciiz "ID:    "
    myID : .asciiz "30408251305491/n"
    Course : .asciiz "Course:   "
    myCourse : .asciiz "CSE321-Computer-Organization\n"

.text

    main :
        la $a0 , Name
        li $v0 , 4 
        syscall

        la $a0 , myName
        li $v0 , 4 
        syscall

        la $a0 , Id
        li $v0 , 4 
        syscall

        la $a0 , myID
        li $v0 , 4 
        syscall

        la $a0 , Course
        li $v0 , 4 
        syscall
        
        la $a0 , myCourse
        li $v0 , 4 
        syscall

        li $v0 ,10 
        syscall

