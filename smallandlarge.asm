org 100h
mov si,1100h 
mov cl,4
mov al,[si]
mov bl,[si] 
inc si
up: cmp al,[si]       
jc large            
mov al,[si]             ;Small Found Case
inc si
dec cl                             
jnz up 
jmp down                             
large: cmp bl,[si]      ;Large found case but............
jc bigger               
inc si                  ;But larger than al only
dec cl
jnz up 
jmp down
bigger: mov bl,[si]     ;Actually Large Found
inc si
dec cl
jnz up
down: mov [1120h],al    ;Result Mover 
mov [1130h],bl
hlt