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
    
    flag_menu db 0 ; 0 JOGAR SELECIONADO , 1 SAIR SELECIONADO
    
    flag_setor db 1 ; 1 - setor 1, 2 - setor 2 , 3 - setor 3 , 4 - ganhou , 0 - morreu
    
    setor_1        db '', 13, 10
                   db ' ____  _____ _____  ____  ____    _ ', 13, 10
                   db '/ ___\/  __//__ __\/  _ \/  __\  / \', 13, 10
                   db '|    \|  \    / \  | / \||  \/|  | |', 13, 10
                   db '\___ ||  /_   | |  | \_/||    /  | |', 13, 10
                   db '\____/\____\  \_/  \____/\_/\_\  \_/', 13, 10
                   db '                                     ', 13, 10

    setor1_length EQU $ - setor_1
    
    setor_2        db '', 13, 10
                   db ' ____  _____ _____  ____  ____    ____ ', 13, 10
                   db '/ ___\/  __//__ __\/  _ \/  __\  /_   \', 13, 10
                   db '|    \|  \    / \  | / \||  \/|   /   /', 13, 10
                   db '\___ ||  /_   | |  | \_/||    /  /   /_', 13, 10
                   db '\____/\____\  \_/  \____/\_/\_\  \____/', 13, 10
                   db '                                        ', 13, 10

    setor2_length EQU $ - setor_2
    
    setor_3        db '', 13, 10
                   db ' ____  _____ _____  ____  ____   _____ ', 13, 10
                   db '/ ___\/  __//__ __\/  _ \/  __\  \__  \', 13, 10
                   db '|    \|  \    / \  | / \||  \/|    /  |', 13, 10
                   db '\___ ||  /_   | |  | \_/||    /   _\  |', 13, 10
                   db '\____/\____\  \_/  \____/\_/\_\  /____/', 13, 10
                   db '                                        ', 13, 10

    setor3_length EQU $ - setor_3

              
    
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

video PROC
    push AX
    mov AX, 13H      
    int 10H         
    pop AX  
    ret
video ENDP


imprime_botoes PROC
    push CX
    push AX
    push BX
    push BP
    push DX
    xor BX, BX
    xor BP, BP
    xor CX, CX
    xor DX, DX

    mov AL, [flag_menu]         ; Carrega a flag em AL
    test AL, AL            ; Testa se a flag ? 0 ou 1
    jnz ATIVADO            ; Se a flag for 1, vai para ATIVADO

DESATIVADO: ;JOGAR SELECIONADO
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
    jmp FINAL

ATIVADO:;SAIR SELECIONADO
    mov BP, OFFSET menuJogar
    mov CX, menuJogar_length ; tamanho
    mov BL, 0FH ; cor
    mov DL, 2 ;coluna
    mov DH, 10 ; linha 
    call print_string
    
    mov BP, OFFSET menuSair
    mov CX, menuSair_length ; tamanho
    mov BL, 0CH ; cor
    mov DL, 2 ;coluna
    mov DH, 15 ; linha
    call print_string
    jmp FINAL

FINAL:
    pop DX
    pop BP
    pop BX
    pop AX
    pop CX
    ret
imprime_botoes ENDP

imprime_setor PROC
    push CX
    push AX
    push BX
    push BP
    push DX
    xor BX, BX
    xor BP, BP
    xor CX, CX
    xor DX, DX
    
    mov AL, [flag_setor]
    cmp AL, 1
    je SETOR1
    cmp AL, 2
    je SETOR2
    cmp AL, 3
    je SETOR3 
    cmp AL, 4
    je VITORIA
    jz MORTE
    
    
SETOR1:
    mov BP, OFFSET setor_1
    mov CX, setor1_length ; tamanho
    mov BL, 0CH ; cor
    mov DL, 2 ;coluna
    mov DH, 15 ; linha
    call print_string
    jmp FINALIZAR2
    
SETOR2:
    mov BP, OFFSET setor_2
    mov CX, setor2_length; tamanho
    mov BL, 0CH ; cor
    mov DL, 2 ;coluna
    mov DH, 15 ; linha
    call print_string
    jmp FINALIZAR2
    
SETOR3:
    mov BP, OFFSET setor_3
    mov CX, setor3_length ; tamanho
    mov BL, 0CH ; cor
    mov DL, 2 ;coluna
    mov DH, 15 ; linha
    call print_string
    jmp FINALIZAR2
    
VITORIA:
    mov BP, OFFSET setor_1
    mov CX, setor1_length ; tamanho
    mov BL, 0CH ; cor
    mov DL, 2 ;coluna
    mov DH, 15 ; linha
    call print_string
    jmp FINALIZAR2
    
MORTE:
    mov BP, OFFSET setor_1
    mov CX, setor1_length ; tamanho
    mov BL, 0CH ; cor
    mov DL, 2 ;coluna
    mov DH, 15 ; linha
    call print_string
    
FINALIZAR2:
    pop DX
    pop BP
    pop BX
    pop AX
    pop CX
    ret
imprime_setor ENDP

print_logo_inicial PROC
    push BP
    push CX
    push BX
    push DX

    mov BP, OFFSET logo
    mov CX, logo_length ; tamanho
    mov BL, 0AH ; cor
    mov DL, 2 ;coluna
    mov DH, 2 ; linha 

    call print_string
    
    call imprime_botoes
    
LACO_TECLA:
    call verifica_tecla
    cmp AL ,18H
    je TROCAR_COR
    cmp AL, 19H
    je TROCAR_COR
    cmp AL, 73H ;W OU S
    je TROCAR_COR
    cmp AL, 77H ; W OU S
    je TROCAR_COR
    cmp AL, 0DH ; enter
    je SELECT
    cmp AL, 20h ; spaco
    je SELECT
    jmp LACO_TECLA
    
    
TROCAR_COR:
    xor [flag_menu], 1          ; Inverte a flag: 0 -> 1 ou 1 -> 0
    call imprime_botoes
    jmp LACO_TECLA
SELECT:
    xor AX,AX
    mov AL, [flag_menu]         ; Carrega a flag em AL
    
    pop DX
    pop CX
    pop BX
    pop BP
    ret
print_logo_inicial ENDP

troca_menu PROC
    xor AX, AX
    mov AL, [flag_menu]         ; Carrega a flag em AL (0 = Jogar, 1 = Sair)

    cmp AL, 1                   ; Verifica se "sair" foi selecionado
    je FINALIZAR
    
JOGAR:
    call video                  ; Reset da tela
    call imprime_setor
    
FINALIZAR:    
    ret
troca_menu ENDP


inicio:
    mov AX, @data
    mov DS, AX
    mov es, AX
    call video
    call print_logo_inicial
    call troca_menu
    mov AH, 4CH
    int 21h
    
end inicio