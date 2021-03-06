.text
.globl tigermain
.type tigermain, @function
tigermain:
pushq %rbp
movq %rsp, %rbp
subq $104, %rsp
L50:
movq %rsi, -16(%rbp)
movq %rdx, -24(%rbp)
movq %rcx, -32(%rbp)
movq %r8, -40(%rbp)
movq %r9, -48(%rbp)
movq %rax, 16(%rbp)
movq %rbp, %rbp
movq %rbp, -104(%rbp)
movq %rbx, %rbx
movq %rbx, -64(%rbp)
movq %r12, %r12
movq %r12, -72(%rbp)
movq %r13, %r13
movq %r13, -80(%rbp)
movq %r14, %r14
movq %r14, -88(%rbp)
movq %r15, %r15
movq %r15, -96(%rbp)
movq %rbp, %rbx
addq $-24, %rbx
movq %rbx, %rbx
call getchar
movq %rax, %rax
movq %rax, (%rbx)
movq %rbp, %rbx
addq $-48, %rbx
movq %rbx, %rbx
movq %rbp, %rdi
call readlist
movq %rax, %rax
movq %rax, (%rbx)
movq %rbp, %r12
addq $-56, %r12
movq %r12, %r12
movq %rbp, %rbx
addq $-24, %rbx
movq %rbx, %rbx
call getchar
movq %rax, %rax
movq %rax, (%rbx)
movq %rbp, %rdi
call readlist
movq %rax, (%r12)
movq %rbp, %rbx
movq %rbp, %rdi
movq -48(%rbp), %rsi
movq %rsi, %rsi
movq -56(%rbp), %rdx
movq %rdx, %rdx
call merge
movq %rax, %rsi
movq %rbx, %rdi
movq %rsi, %rsi
call printlist
movq %rax, %rax
movq -104(%rbp), %rbp
movq %rbp, %rbp
movq -64(%rbp), %rbx
movq %rbx, %rbx
movq -72(%rbp), %r12
movq %r12, %r12
movq -80(%rbp), %r13
movq %r13, %r13
movq -88(%rbp), %r14
movq %r14, %r14
movq -96(%rbp), %r15
movq %r15, %r15
jmp L49
L49:



leaveq
ret
.text
.globl printlist
.type printlist, @function
printlist:
pushq %rbp
movq %rsp, %rbp
subq $64, %rsp
L52:
movq %rdi, -8(%rbp)
movq %rsi, -16(%rbp)
movq %rbp, %rbp
movq %rbp, -40(%rbp)
movq %rbx, %rbx
movq %rbx, -32(%rbp)
movq %r12, %r12
movq %r12, -24(%rbp)
movq %r13, %r13
movq %r13, -48(%rbp)
movq %r14, %r14
movq %r14, -56(%rbp)
movq %r15, %r15
movq %r15, -64(%rbp)
movq $0, %rax
movq %rax, %rax
movq -16(%rbp), %rdx
movq $0, %rax
cmpq %rax, %rdx
je L46
L47:
movq -8(%rbp), %rdi
movq %rdi, %rdi
movq -16(%rbp), %rax
movq 8(%rax), %rsi
movq %rsi, %rsi
call printint
leaq .L45(%rip), %rdi
movq %rdi, %rdi
call print
movq -8(%rbp), %rdi
movq %rdi, %rdi
movq -16(%rbp), %rax
movq 0(%rax), %rsi
movq %rsi, %rsi
call printlist
movq %rax, %rax
L48:
movq %rax, %rax
movq -40(%rbp), %rbp
movq %rbp, %rbp
movq -32(%rbp), %rbx
movq %rbx, %rbx
movq -24(%rbp), %r12
movq %r12, %r12
movq -48(%rbp), %r13
movq %r13, %r13
movq -56(%rbp), %r14
movq %r14, %r14
movq -64(%rbp), %r15
movq %r15, %r15
jmp L51
L46:
leaq .L44(%rip), %rdi
movq %rdi, %rdi
call print
movq %rax, %rax
jmp L48
L51:



leaveq
ret
.section .rodata
.L45:
.int 1
.string "\x20"
.section .rodata
.L44:
.int 1
.string "\x0A"
.text
.globl printint
.type printint, @function
printint:
pushq %rbp
movq %rsp, %rbp
subq $64, %rsp
L54:
movq %rdi, -8(%rbp)
movq %rsi, -16(%rbp)
movq %rbp, %rbp
movq %rbp, -40(%rbp)
movq %rbx, %rbx
movq %rbx, -32(%rbp)
movq %r12, %r12
movq %r12, -24(%rbp)
movq %r13, %r13
movq %r13, -48(%rbp)
movq %r14, %r14
movq %r14, -56(%rbp)
movq %r15, %r15
movq %r15, -64(%rbp)
movq $0, %rax
movq %rax, %rax
movq -8(%rbp), %rax
movq -8(%rax), %rax
movq -16(%rax), %rdx
movq $0, %rax
cmpq %rax, %rdx
jl L41
L42:
movq $0, %rax
movq %rax, %rax
movq -8(%rbp), %rax
movq -8(%rax), %rax
movq -16(%rax), %rdx
movq $0, %rax
cmpq %rax, %rdx
jg L38
L39:
leaq .L37(%rip), %rdi
movq %rdi, %rdi
call print
movq %rax, %rax
L40:
movq %rax, %rax
L43:
movq %rax, %rax
movq -40(%rbp), %rbp
movq %rbp, %rbp
movq -32(%rbp), %rbx
movq %rbx, %rbx
movq -24(%rbp), %r12
movq %r12, %r12
movq -48(%rbp), %r13
movq %r13, %r13
movq -56(%rbp), %r14
movq %r14, %r14
movq -64(%rbp), %r15
movq %r15, %r15
jmp L53
L41:
leaq .L36(%rip), %rdi
movq %rdi, %rdi
call print
movq %rbp, %rdi
movq -8(%rbp), %rax
movq -8(%rax), %rax
movq -16(%rax), %rsi
movq %rsi, %rsi
subq $0, %rsi
movq %rsi, %rsi
call f
movq %rax, %rax
jmp L43
L38:
movq %rbp, %rdi
movq -8(%rbp), %rax
movq -8(%rax), %rax
movq -16(%rax), %rsi
movq %rsi, %rsi
call f
movq %rax, %rax
jmp L40
L53:



leaveq
ret
.section .rodata
.L37:
.int 1
.string "\x30"
.section .rodata
.L36:
.int 1
.string "\x2D"
.text
.globl f
.type f, @function
f:
pushq %rbp
movq %rsp, %rbp
subq $64, %rsp
L56:
movq %rdi, -8(%rbp)
movq %rsi, -16(%rbp)
movq %rbp, %rbp
movq %rbp, -48(%rbp)
movq %rbx, %rbx
movq %rbx, -40(%rbp)
movq %r12, %r12
movq %r12, -32(%rbp)
movq %r13, %r13
movq %r13, -24(%rbp)
movq %r14, %r14
movq %r14, -56(%rbp)
movq %r15, %r15
movq %r15, -64(%rbp)
movq $0, %rax
movq %rax, %rax
movq -16(%rbp), %rdi
movq $0, %rax
cmpq %rax, %rdi
jg L33
L34:
movq $0, %rax
movq %rax, %rax
L35:
movq %rax, %rax
movq -48(%rbp), %rbp
movq %rbp, %rbp
movq -40(%rbp), %rbx
movq %rbx, %rbx
movq -32(%rbp), %r12
movq %r12, %r12
movq -24(%rbp), %r13
movq %r13, %r13
movq -56(%rbp), %r14
movq %r14, %r14
movq -64(%rbp), %r15
movq %r15, %r15
jmp L55
L33:
movq -8(%rbp), %rdi
movq %rdi, %rdi
movq -16(%rbp), %rax
movq $10, %rsi
movq %rax, %rax
xorq %rdx, %rdx
idivq %rsi
movq %rax, %rsi
movq %rsi, %rsi
call f
movq -16(%rbp), %rbx
movq %rbx, %rbx
movq -16(%rbp), %rax
movq $10, %rdi
movq %rax, %rax
xorq %rdx, %rdx
idivq %rdi
movq %rax, %rax
movq %rax, %rax
imulq $10, %rax
subq %rax, %rbx
movq %rbx, %rbx
leaq .L32(%rip), %rdi
movq %rdi, %rdi
call ord
movq %rax, %rax
movq %rbx, %rdi
addq %rax, %rdi
movq %rdi, %rdi
call chr
movq %rax, %rdi
movq %rdi, %rdi
call print
movq %rax, %rax
jmp L35
L55:



leaveq
ret
.section .rodata
.L32:
.int 1
.string "\x30"
.text
.globl merge
.type merge, @function
merge:
pushq %rbp
movq %rsp, %rbp
subq $72, %rsp
L58:
movq %rdi, -8(%rbp)
movq %rsi, -16(%rbp)
movq %rdx, -24(%rbp)
movq %rcx, %r12
movq %r8, %r12
movq %rbp, %rbp
movq %rbp, -64(%rbp)
movq %rbx, %rbx
movq %rbx, -56(%rbp)
movq %r12, %r12
movq %r12, -48(%rbp)
movq %r13, %r13
movq %r13, -40(%rbp)
movq %r14, %r14
movq %r14, -32(%rbp)
movq %r15, %r15
movq %r15, -72(%rbp)
movq $0, %rax
movq %rax, %rax
movq -16(%rbp), %rdx
movq $0, %rax
cmpq %rax, %rdx
je L29
L30:
movq $0, %rax
movq %rax, %rax
movq -24(%rbp), %rdx
movq $0, %rax
cmpq %rax, %rdx
je L26
L27:
movq $0, %r12
movq %r12, %r12
movq -16(%rbp), %rax
movq 8(%rax), %rdx
movq -24(%rbp), %rax
movq 8(%rax), %rax
cmpq %rax, %rdx
jl L23
L24:
movq $16, %rdi
movq %rdi, %rdi
call allocRecord
movq %rax, %r12
movq %r12, %rbx
addq $0, %rbx
movq %rbx, %rbx
movq -8(%rbp), %rdi
movq %rdi, %rdi
movq -16(%rbp), %rsi
movq %rsi, %rsi
movq -24(%rbp), %rax
movq 0(%rax), %rdx
movq %rdx, %rdx
call merge
movq %rax, %rax
movq %rax, (%rbx)
movq -24(%rbp), %rax
movq 8(%rax), %rax
movq %rax, 8(%r12)
movq %r12, %r12
L25:
movq %r12, %rax
L28:
movq %rax, %rax
L31:
movq %rax, %rax
movq -64(%rbp), %rbp
movq %rbp, %rbp
movq -56(%rbp), %rbx
movq %rbx, %rbx
movq -48(%rbp), %r12
movq %r12, %r12
movq -40(%rbp), %r13
movq %r13, %r13
movq -32(%rbp), %r14
movq %r14, %r14
movq -72(%rbp), %r15
movq %r15, %r15
jmp L57
L29:
movq -24(%rbp), %rax
movq %rax, %rax
jmp L31
L26:
movq -16(%rbp), %rax
movq %rax, %rax
jmp L28
L23:
movq $16, %rdi
movq %rdi, %rdi
call allocRecord
movq %rax, %r12
movq %r12, %rbx
addq $0, %rbx
movq %rbx, %rbx
movq -8(%rbp), %rdi
movq %rdi, %rdi
movq -16(%rbp), %rax
movq 0(%rax), %rsi
movq %rsi, %rsi
movq -24(%rbp), %rdx
movq %rdx, %rdx
call merge
movq %rax, %rax
movq %rax, (%rbx)
movq -16(%rbp), %rax
movq 8(%rax), %rax
movq %rax, 8(%r12)
movq %r12, %r12
jmp L25
L57:



leaveq
ret
.text
.globl readlist
.type readlist, @function
readlist:
pushq %rbp
movq %rsp, %rbp
subq $72, %rsp
L60:
movq %rdi, -8(%rbp)
movq %rsi, %rax
movq %rdx, -16(%rbp)
movq %rcx, -24(%rbp)
movq %r8, %rbx
movq %rbp, %rbp
movq %rbp, -64(%rbp)
movq %rbx, %rbx
movq %rbx, -56(%rbp)
movq %r12, %r12
movq %r12, -48(%rbp)
movq %r13, %r13
movq %r13, -40(%rbp)
movq %r14, %r14
movq %r14, -32(%rbp)
movq %r15, %r15
movq %r15, -72(%rbp)
movq %rbp, %rbx
addq $-16, %rbx
movq %rbx, %rbx
movq $8, %rdi
movq %rdi, %rdi
call allocRecord
movq %rax, %rax
movq $0, %rdx
movq %rdx, 0(%rax)
movq %rax, (%rbx)
movq %rbp, %rbx
addq $-24, %rbx
movq %rbx, %rbx
movq -8(%rbp), %rdi
movq %rdi, %rdi
movq -16(%rbp), %rsi
movq %rsi, %rsi
call readint
movq %rax, %rax
movq %rax, (%rbx)
movq $0, %rbx
movq %rbx, %rbx
movq -16(%rbp), %rax
movq 0(%rax), %rdx
movq $0, %rax
cmpq %rax, %rdx
jne L20
L21:
movq $0, %rbx
movq %rbx, %rbx
L22:
movq %rbx, %rax
movq -64(%rbp), %rbp
movq %rbp, %rbp
movq -56(%rbp), %rbx
movq %rbx, %rbx
movq -48(%rbp), %r12
movq %r12, %r12
movq -40(%rbp), %r13
movq %r13, %r13
movq -32(%rbp), %r14
movq %r14, %r14
movq -72(%rbp), %r15
movq %r15, %r15
jmp L59
L20:
movq $16, %rdi
movq %rdi, %rdi
call allocRecord
movq %rax, %rbx
movq %rbx, %r12
addq $0, %r12
movq %r12, %r12
movq -8(%rbp), %rdi
movq %rdi, %rdi
call readlist
movq %rax, %rax
movq %rax, (%r12)
movq -24(%rbp), %rax
movq %rax, 8(%rbx)
movq %rbx, %rbx
jmp L22
L59:



leaveq
ret
.text
.globl readint
.type readint, @function
readint:
pushq %rbp
movq %rsp, %rbp
subq $72, %rsp
L62:
movq %rdi, -8(%rbp)
movq %rsi, -16(%rbp)
movq %rdx, -24(%rbp)
movq %rbp, %rbp
movq %rbp, -64(%rbp)
movq %rbx, %rbx
movq %rbx, -56(%rbp)
movq %r12, %r12
movq %r12, -48(%rbp)
movq %r13, %r13
movq %r13, -40(%rbp)
movq %r14, %r14
movq %r14, -32(%rbp)
movq %r15, %r15
movq %r15, -72(%rbp)
movq $0, %rax
movq %rax, -24(%rbp)
movq %rbp, %rdi
call skipto
movq -16(%rbp), %rbx
movq %rbx, %rbx
addq $0, %rbx
movq %rbx, %rbx
movq %rbp, %rdi
movq -8(%rbp), %rax
movq -24(%rax), %rsi
movq %rsi, %rsi
call isdigit
movq %rax, %rax
movq %rax, (%rbx)
L18:
movq %rbp, %rdi
movq -8(%rbp), %rax
movq -24(%rax), %rsi
movq %rsi, %rsi
call isdigit
movq %rax, %rax
movq $0, %rdx
cmpq %rdx, %rax
jne L19
L16:
movq -24(%rbp), %rax
movq %rax, %rax
movq -64(%rbp), %rbp
movq %rbp, %rbp
movq -56(%rbp), %rbx
movq %rbx, %rbx
movq -48(%rbp), %r12
movq %r12, %r12
movq -40(%rbp), %r13
movq %r13, %r13
movq -32(%rbp), %r14
movq %r14, %r14
movq -72(%rbp), %r15
movq %r15, %r15
jmp L61
L19:
movq %rbp, %r12
addq $-24, %r12
movq %r12, %r12
movq -24(%rbp), %rbx
movq %rbx, %rbx
imulq $10, %rbx
movq %rbx, %rbx
movq -8(%rbp), %rax
movq -24(%rax), %rdi
movq %rdi, %rdi
call ord
movq %rax, %rax
movq %rbx, %rbx
addq %rax, %rbx
movq %rbx, %rbx
leaq .L17(%rip), %rdi
movq %rdi, %rdi
call ord
movq %rax, %rax
movq %rbx, %rbx
subq %rax, %rbx
movq %rbx, (%r12)
movq -8(%rbp), %rbx
movq %rbx, %rbx
addq $-24, %rbx
movq %rbx, %rbx
call getchar
movq %rax, %rax
movq %rax, (%rbx)
jmp L18
L61:



leaveq
ret
.section .rodata
.L17:
.int 1
.string "\x30"
.text
.globl skipto
.type skipto, @function
skipto:
pushq %rbp
movq %rsp, %rbp
subq $56, %rsp
L64:
movq %rdi, -8(%rbp)
movq %rbp, %rbp
movq %rbp, -40(%rbp)
movq %rbx, %rbx
movq %rbx, -32(%rbp)
movq %r12, %r12
movq %r12, -24(%rbp)
movq %r13, %r13
movq %r13, -16(%rbp)
movq %r14, %r14
movq %r14, -48(%rbp)
movq %r15, %r15
movq %r15, -56(%rbp)
L14:
movq $0, %rbx
movq %rbx, %rbx
movq -8(%rbp), %rax
movq -8(%rax), %rax
movq -24(%rax), %rdi
movq %rdi, %rdi
leaq .L8(%rip), %rsi
movq %rsi, %rsi
call stringEqual
movq %rax, %rax
movq $1, %rdx
cmpq %rdx, %rax
je L10
L11:
movq -8(%rbp), %rax
movq -8(%rax), %rax
movq -24(%rax), %rdi
movq %rdi, %rdi
leaq .L9(%rip), %rsi
movq %rsi, %rsi
call stringEqual
movq %rax, %rax
movq $1, %rdx
cmpq %rdx, %rax
je L13
L12:
movq $0, %rax
cmpq %rax, %rbx
jne L15
L7:
movq $0, %rax
movq %rax, %rax
movq -40(%rbp), %rbp
movq %rbp, %rbp
movq -32(%rbp), %rbx
movq %rbx, %rbx
movq -24(%rbp), %r12
movq %r12, %r12
movq -16(%rbp), %r13
movq %r13, %r13
movq -48(%rbp), %r14
movq %r14, %r14
movq -56(%rbp), %r15
movq %r15, %r15
jmp L63
L10:
L13:
movq $1, %rbx
movq %rbx, %rbx
jmp L12
L15:
movq -8(%rbp), %rax
movq -8(%rax), %rbx
movq %rbx, %rbx
addq $-24, %rbx
movq %rbx, %rbx
call getchar
movq %rax, %rax
movq %rax, (%rbx)
jmp L14
L63:



leaveq
ret
.section .rodata
.L9:
.int 1
.string "\x0A"
.section .rodata
.L8:
.int 1
.string "\x20"
.text
.globl isdigit
.type isdigit, @function
isdigit:
pushq %rbp
movq %rsp, %rbp
subq $64, %rsp
L66:
movq %rdi, -8(%rbp)
movq %rsi, -16(%rbp)
movq %rbp, %rbp
movq %rbp, -56(%rbp)
movq %rbx, %rbx
movq %rbx, -48(%rbp)
movq %r12, %r12
movq %r12, -40(%rbp)
movq %r13, %r13
movq %r13, -32(%rbp)
movq %r14, %r14
movq %r14, -24(%rbp)
movq %r15, %r15
movq %r15, -64(%rbp)
movq $0, %r12
movq %r12, %r12
movq -8(%rbp), %rax
movq -8(%rax), %rax
movq -24(%rax), %rdi
movq %rdi, %rdi
call ord
movq %rax, %rbx
movq %rbx, %rbx
leaq .L1(%rip), %rdi
movq %rdi, %rdi
call ord
movq %rax, %rax
cmpq %rax, %rbx
jge L3
L4:
L5:
movq %r12, %rax
movq -56(%rbp), %rbp
movq %rbp, %rbp
movq -48(%rbp), %rbx
movq %rbx, %rbx
movq -40(%rbp), %r12
movq %r12, %r12
movq -32(%rbp), %r13
movq %r13, %r13
movq -24(%rbp), %r14
movq %r14, %r14
movq -64(%rbp), %r15
movq %r15, %r15
jmp L65
L3:
movq -8(%rbp), %rax
movq -8(%rax), %rax
movq -24(%rax), %rdi
movq %rdi, %rdi
call ord
movq %rax, %rbx
movq %rbx, %rbx
leaq .L2(%rip), %rdi
movq %rdi, %rdi
call ord
movq %rax, %rax
cmpq %rax, %rbx
jg L5
L6:
movq $1, %r12
movq %r12, %r12
jmp L5
L65:



leaveq
ret
.section .rodata
.L2:
.int 1
.string "\x39"
.section .rodata
.L1:
.int 1
.string "\x30"
