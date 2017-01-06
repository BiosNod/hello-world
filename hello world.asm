.MODEL SMALL
.STACK 100h
.DATA
    NL EQU 13, 10
    HelloMessage DB 'Hello world!', NL , 'and', NL, 'bye world!', NL, '$'
    OutN DB '', nl, 0
.CODE
START:
    mov ax,@data
    mov ds,ax
    mov ah,9
    mov dx,OFFSET HelloMessage
    int 21h    
    mov ah,4ch
    int 21h

END START