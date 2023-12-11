.data
char db 'A'
mesg1 db '1'
mesg0 db '0'
newline db 10

.text
global _start

.code
mov rcx,0
mov r8,8
mov bl,[char]
lp:clc
shl bl,1

jc one
jnc zero
back:

dec r8
jnz lp 

jmp exit
one:
mov rax,1
mov rdi,1
mov rsi,mesg1
mov rdx,1
syscall
jmp back

zero
mov rax,1
mov rdi,1
mov rsi,mesg0
mov rdx,1
syscall
jmp back


.exit
mov rax,1
mov rdi,1
mov rsi,newline
mov rdx,1
syscall
mov rax,60
xor rdi,rdi
syscall

