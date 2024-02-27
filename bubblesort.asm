org 100h
mov si,1100h
mov cl,09
mov ch,09
mov al,[si]
inc si

up: cmp al,[si] 
jc big   ;jnc big For Decending Order
mov bl,[si]
mov [si],al
dec si
mov [si],bl 
inc si
inc si
dec ch
jnz up
jmp outer

big: mov al,[si]
inc si
dec ch
jnz up
 
outer: mov si,1100h 
mov al,[si]
inc si
mov ch,09
dec cl
jnz up
hlt

