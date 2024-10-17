.model small
.stack 100H

.data
    logo    db '', 13, 10
            db '   _  __      ____  _____  ____  ____ ', 13, 10
            db '  / |/ /     / ___\/__ __\/  _ \/  __\ ', 13, 10
            db '  |   /_____ |    \  / \  | / \||  \/| ', 13, 10
            db '  |   \\____\\___ |  | |  | |-|||    / ', 13, 10
            db '  \_|\_\     \____/  \_/  \_/ \|\_/\_\ ', 13, 10
            db '                                            ', 13, 10
            
    logo_length EQU $ - logo

    menuJogar    db '', 13, 10
                db '', 13, 10
                db '', 13, 10
                db '               ', 218, 196, 196, 196, 196, 196, 196,196, 191, 13, 10     
                db '               ', 179, ' Jogar ', 179, 13, 10
                db '               ', 192, 196, 196, 196, 196, 196, 196,196, 217, 13, 10

    menuJogar_length EQU $ - menuJogar
    
    menuSair     db '', 13, 10
                db '               ', 218, 196, 196, 196, 196, 196, 196,196, 191, 13, 10     
                db '               ', 179, ' Sair  ', 179, 13, 10
                db '               ', 192, 196, 196, 196, 196, 196, 196,196, 217, 13, 10
   
    menuSair_length EQU $ - menuSair

.code

print_string PROC
    push AX
    push BX
    push CX
    push DX
    push SI
    push BP

    mov AH, 13h
    mov AL, 01h
    xor BH, BH
    int 10h

    pop DI
    pop SI
    pop DX
    pop CX
    pop BX
    pop AX
    ret
print_string ENDP

verifica_tecla PROC
    ;mov ah, 01h ; verifica se tem no buffer 
    ;int 16h a principio n?o precisa 
    ; ZF = 1 tecla pressionada e no buffer , ZF = 0 tecla n pressionada

    xor AL,AL ;deixa como padr?o o NULL caso n?o tenha pressionado nada

    mov AH, 00h
    int 16h
    ;tecla em al
        
    ret
verifica_tecla ENDP

inverte_cor PROC
    push CX
    push AX
    push BX
    push BP
    push DX

    mov AX, CX
    mov BL, 2h
    div BL
    
    xor BX, BX
    xor BP, BP
    xor CX, CX
    xor DX, DX
    test AH, AH
    jnz IMPAR

PAR:
    mov BP, OFFSET menuJogar
    mov CX, menuJogar_length
    mov BL, 0Ch
    mov DL, 2
    mov DH, 10

    call print_string

    mov BP, OFFSET menuSair
    mov CX, menuSair_length
    mov BL, 0Fh
    mov DL, 2
    mov DH, 15

    call print_string
    jmp FINAL

IMPAR:
    mov BP, OFFSET menuJogar
    mov CX, menuJogar_length
    mov BL, 0Fh
    mov DL, 2
    mov DH, 10

    call print_string

    mov BP, OFFSET menuSair
    mov CX, menuSair_length
    mov BL, 0Ch
    mov DL, 2
    mov DH, 15

    call print_string

FINAL:
    pop DX
    pop BP
    pop BX
    pop AX
    pop CX
    ret
inverte_cor ENDP


print_logo_inicial PROC
    push BP

    mov BP, OFFSET logo
    mov CX, logo_length ; tamanho
    mov BL, 0AH ; cor
    mov DL, 2 ;coluna
    mov DH, 2 ; linha 

    call print_string
    
    mov BP, OFFSET menuJogar
    mov CX, menuJogar_length ; tamanho
    mov BL, 0CH ; cor
    mov DL, 2 ;coluna
    mov DH, 10 ; linha 

    call print_string
    
    mov BP, OFFSET menuSair
    mov CX, menuSair_length ; tamanho
    mov BL, 0FH ; cor
    mov DL, 2 ;coluna
    mov DH, 15 ; linha
   
    call print_string
    
    xor CX,CX ; zera o registrador CX 
LACO_TECLA:
    call verifica_tecla
    cmp AL ,18H 
    je TROCAR_COR
    cmp AL, 19H
    je TROCAR_COR
    cmp AL, 73H
    je TROCAR_COR
    cmp AL, 77H
    je TROCAR_COR
    cmp AL, 0DH
    cmp AL, 20h
    jmp LACO_TECLA
    
    
TROCAR_COR:
    inc CX
    call inverte_cor
    jmp LACO_TECLA
    
    pop BP
    ret
print_logo_inicial ENDP

video PROC
    push AX
    mov AX, 13H      
    int 10H         
    pop AX  
    ret
video ENDP

inicio:
    mov AX, @data
    mov DS, AX
    mov es, AX
    call video
    call print_logo_inicial
    mov AH, 4CH
    int 21h
    
end inicio
