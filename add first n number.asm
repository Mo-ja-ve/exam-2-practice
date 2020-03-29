.data
strA:   .asciiz "please enter your 'n', which you would like to sum\n"
.text

.globl main
.text

main:
    #  ask user for input
    li $v0, 4
    la $a0, strA
    syscall
    
    #  read input from the user and store it into $v0
    li $v0, 5
    syscall

    #  add v0 to a register we can work with
    add $s0, $zero, $v0

    #  exit the program
    li $v0, 10
    syscall
