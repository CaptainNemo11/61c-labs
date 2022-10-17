.globl factorial

.data
n: .word 8

.text
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

factorial:
    # YOUR CODE HERE
    li t0, 1  
    beq a0, t0, finish  #n == 1 return 1
    addi sp, sp, -8
    sw ra, 0(sp)
    sw a0, 4(sp)
    addi a0, a0, -1
    jal factorial
    lw t0, 4(sp)
    mul a0, t0, a0
    lw ra, 0(sp)
    addi sp, sp, 8
finish:
    ret


