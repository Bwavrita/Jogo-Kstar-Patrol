.model small
.stack 100H

.data
    logo    db '', 13, 10
            db ' _  __      ____  _____  ____  ____ ', 13, 10
            db '/ |/ /     / ___\/__ __\/  _ \/  __\ ', 13, 10
            db '|   /_____ |    \  / \  | / \||  \/| ', 13, 10
            db '|   \\____\\___ |  | |  | |-|||    / ', 13, 10
            db '\_|\_\     \____/  \_/  \_/ \|\_/\_\ ', 13, 10
            db '                                            ', 13, 10
            
    logo_length EQU $ - logo

    menuJogar    db '', 13, 10
                db '', 13, 10
                db '', 13, 10
                db '                ', 218, 196, 196, 196, 196, 196, 196, 191, 13, 10     
                db '                ', 221, ' Jogar', 221, 13, 10
                db '                ', 192, 196, 196, 196, 196, 196, 196, 217, 13, 10

    menuJogar_length EQU $ - menuJogar
    
    menuSair     db '', 13, 10
                db '                ', 218, 196, 196, 196, 196, 196, 196, 191, 13, 10     
                db '                ', 221, ' Sair ', 221, 13, 10
                db '                ', 192, 196, 196, 196, 196, 196, 196, 217, 13, 10
   
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

verificaTecla PROC
    push AX
    mov ah, 01h ; verifica se tem no buffer 
    int 16h
    jnz pres ; ZF = 1 tecla pressionada e no buffer , ZF = 0 tecla n pressinada

    jmp npres

pres:
    ; logica para tecla pressionada 

npres:
    ; para n?o pressionada   
    
    ; estou pensando em so retornar ou nao temos que ver
verificaTecla ENDP

inicio:
    mov AX, @data
    mov DS, AX
    mov es, AX
    call video
    call print_logo_inicial
    mov AH, 4CH
    int 21h
    
end inicio
