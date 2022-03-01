.model tiny
.data
id db 2, 0, 1, 9, 'B', 5, 'A', 8, 0, 7, 5, 4

.code
.startup
mov si, offset id
clc
mov al, [si]
mov cl, 12
mov bl, 40h
dec cl 
x1: inc si
    cmp bl, [si]
    jb x2
    add al, [si]
x2: dec cl
    jnz x1
    mov bx, 2019h
    mov ds, bx
    mov ds:[0754h], al
.exit
end