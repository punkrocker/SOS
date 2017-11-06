[org 0x7c00]
mov ah,0x0e
mov bx,HELLO_MSG
call print_string

mov bx,BYE_MSG
call print_string

jmp $

print_string:
mov al,[bx]
int 0x10
add bx,1
cmp al,0
jne print_string
ret

;Data
HELLO_MSG:
db 'Hello World','X',0

BYE_MSG:
db 'BYE',0

times 510-($-$$) db 0
dw 0xaa55
