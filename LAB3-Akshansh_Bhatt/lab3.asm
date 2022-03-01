.model tiny
.386

.data
year equ 2019h
id equ 0741h
len equ 14
NM db 'Akshansh Bhatt'
.code
.startup
    mov cx,14
    mov bx,2019h
    mov es,bx
    lea si,NM
    mov di,0754h
    add di,len
x1: lodsb
    mov es:[di],al
    dec di
    dec cx
    jnz x1
.exit
END