org 100h
mov si,1100h
mov cl,10
jump: add al,[si]
dec cl
jnz jump
mov [1120h],al
hlt