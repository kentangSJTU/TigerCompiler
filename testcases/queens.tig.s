.text
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $48, %rsp

L34:
movq $8, %rax
movq %rax, 16(%rbp)
movq %rbp, %rax
addq $24, %rax
movq %rax, %rax
movq 16(%rbp), %rdi
movq %rdi, %rdi
movq $0, %rsi
movq %rsi, %rsi
call initArray
movq %rax, %rax
movq %rax, (%rax)
movq %rbp, %rax
addq $32, %rax
movq %rax, %rax
movq 16(%rbp), %rdi
movq %rdi, %rdi
movq $0, %rsi
movq %rsi, %rsi
call initArray
movq %rax, %rax
movq %rax, (%rax)
movq %rbp, %rax
addq $40, %rax
movq %rax, %rax
movq 16(%rbp), %rdi
movq %rdi, %rdi
movq 16(%rbp), %rax
addq %rax, %rdi
movq %rdi, %rdi
subq $1, %rdi
movq %rdi, %rdi
movq $0, %rsi
movq %rsi, %rsi
call initArray
movq %rax, %rax
movq %rax, (%rax)
movq %rbp, %rax
addq $48, %rax
movq %rax, %rax
movq 16(%rbp), %rdi
movq %rdi, %rdi
movq 16(%rbp), %rax
addq %rax, %rdi
movq %rdi, %rdi
subq $1, %rdi
movq %rdi, %rdi
movq $0, %rsi
movq %rsi, %rsi
call initArray
movq %rax, %rax
movq %rax, (%rax)
movq 8(%rbp), %rdi
movq %rdi, %rdi
movq $0, %rsi
movq %rsi, %rsi
call try
jmp L33
L33:

leaveq
ret

.text
.globl try
.type try, @function
try:
pushq %rbp
movq %rsp, %rbp
subq $16, %rsp

L36:
movq $0, %rax
movq %rax, %rax
movq 8(%rbp), %rax
movq 16(%rax), %rax
cmp %rsi, %rax
je L30
L31:
movq $0, %rax
movq %rax, %r8
movq 8(%rbp), %rax
movq 16(%rax), %rax
movq %rax, %rax
subq $1, %rax
movq %rax, %rbx
L28:
cmp %r8, %rbx
jg L14
L29:
movq $0, %rax
movq %rax, %rax
movq $0, %rcx
movq %rcx, %rcx
movq $0, %rdi
movq %rdi, %rdi
movq 8(%rbp), %rax
movq 24(%rax), %rax
movq %rax, %rax
movq %r8, %rdx
imulq $8, %rdx
addq %rdx, %rax
movq (%rax), %rax
movq $0, %rdx
cmp %rax, %rdx
je L15
L16:
L17:
movq $0, %rax
cmp %rdi, %rax
jne L19
L19:
L20:
movq 8(%rbp), %rax
movq 48(%rax), %rax
movq %rax, %rax
movq %r8, %rdx
addq $7, %rdx
movq %rdx, %rdx
subq %rsi, %rdx
movq %rdx, %rdx
imulq $8, %rdx
addq %rdx, %rax
movq (%rax), %rax
movq $0, %rdx
cmp %rax, %rdx
je L23
L22:
movq $0, %rax
cmp %rcx, %rax
jne L24
L24:
L25:
movq 8(%rbp), %rax
movq 24(%rax), %rax
movq %rax, %rax
movq %r8, %rdx
imulq $8, %rdx
addq %rdx, %rax
movq $1, %rax
movq %rax, (%rax)
movq 8(%rbp), %rax
movq 40(%rax), %rax
movq %rax, %rax
movq %r8, %rdx
addq %rsi, %rdx
movq %rdx, %rdx
imulq $8, %rdx
addq %rdx, %rax
movq $1, %rax
movq %rax, (%rax)
movq 8(%rbp), %rax
movq 48(%rax), %rax
movq %rax, %rax
movq %r8, %rdx
addq $7, %rdx
movq %rdx, %rdx
subq %rsi, %rdx
movq %rdx, %rdx
imulq $8, %rdx
addq %rdx, %rax
movq $1, %rax
movq %rax, (%rax)
movq 8(%rbp), %rax
movq 32(%rax), %rax
movq %rax, %rax
movq %rsi, %rdx
imulq $8, %rdx
addq %rdx, %rax
movq %r8, (%rax)
movq %rbp, %rdi
movq %rsi, %rsi
addq $1, %rsi
movq %rsi, %rsi
call try
movq 8(%rbp), %rax
movq 24(%rax), %rax
movq %rax, %rax
movq %r8, %rdx
imulq $8, %rdx
addq %rdx, %rax
movq $0, %rax
movq %rax, (%rax)
movq 8(%rbp), %rax
movq 40(%rax), %rax
movq %rax, %rax
movq %r8, %rdx
addq %rsi, %rdx
movq %rdx, %rdx
imulq $8, %rdx
addq %rdx, %rax
movq $0, %rax
movq %rax, (%rax)
movq 8(%rbp), %rax
movq 48(%rax), %rax
movq %rax, %rax
movq %r8, %rdx
addq $7, %rdx
movq %rdx, %rdx
subq %rsi, %rdx
movq %rdx, %rdx
imulq $8, %rdx
addq %rdx, %rax
movq $0, %rax
movq %rax, (%rax)
movq $0, %rax
movq %rax, %rax
L27:
movq %r8, %rax
addq $1, %rax
movq %rax, %r8
jmp L28
L30:
movq 8(%rbp), %rax
movq 8(%rax), %rdi
movq %rdi, %rdi
call printboard
movq %rax, %rax
L32:
jmp L35
L15:
movq 8(%rbp), %rax
movq 40(%rax), %rdx
movq %rdx, %rdx
movq %r8, %rax
addq %rsi, %rax
movq %rax, %rax
imulq $8, %rax
addq %rax, %rdx
movq (%rdx), %rax
movq $0, %rdx
cmp %rax, %rdx
jne L17
L18:
movq $1, %rdi
movq %rdi, %rdi
jmp L17
L23:
movq $1, %rcx
movq %rcx, %rcx
jmp L22
L21:
jmp L22
L26:
movq $0, %rax
movq %rax, %rax
jmp L27
L14:
movq $0, %rax
movq %rax, %rax
jmp L32
L35:

leaveq
ret

.text
.globl printboard
.type printboard, @function
printboard:
pushq %rbp
movq %rsp, %rbp
subq $8, %rsp

L38:
movq $0, %rax
movq %rax, %r9
movq 8(%rbp), %rax
movq 16(%rax), %r8
movq %r8, %r8
subq $1, %r8
movq %r8, %r8
L11:
cmp %r9, %r8
jg L1
L12:
movq $0, %rax
movq %rax, %rbx
movq 8(%rbp), %rax
movq 16(%rax), %rax
movq %rax, %rax
subq $1, %rax
movq %rax, %rcx
L8:
cmp %rbx, %rcx
jg L2
L9:
movq 8(%rbp), %rax
movq 8(%rax), %rdx
movq %rdx, %rdx
movq $0, %rax
movq %rax, %rax
movq 8(%rbp), %rax
movq 32(%rax), %rax
movq %rax, %rax
movq %r9, %rdi
imulq $8, %rdi
addq %rdi, %rax
movq (%rax), %rax
cmp %rax, %rbx
je L5
L6:
movq %r12, %rax
L7:
movq %rdx, %rdi
movq %rax, %rsi
call print
movq %rbx, %rax
addq $1, %rax
movq %rax, %rbx
jmp L8
L5:
movq %r11, %rax
jmp L7
L2:
movq 8(%rbp), %rax
movq 8(%rax), %rdi
movq %rdi, %rdi
movq %r10, %rsi
call print
movq %r9, %rax
addq $1, %rax
movq %rax, %r9
jmp L11
L1:
movq 8(%rbp), %rax
movq 8(%rax), %rdi
movq %rdi, %rdi
movq %rdx, %rsi
call print
jmp L37
L37:

leaveq
ret

.section .rodata
.L13:
.string "
"
.section .rodata
.L10:
.string "
"
.section .rodata
.L4:
.string " ."
.section .rodata
.L3:
.string " O"
