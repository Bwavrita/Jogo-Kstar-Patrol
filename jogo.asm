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
    
    nave    db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
            db 0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
            db 1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
            db 1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0
            db 0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0
            db 0,0,1,1,1,1,0,0,0,0,1,1,1,1,1,0,0,0,0,0
            db 0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0
            db 1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0
            db 1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
            db 0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 
            db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
     
     
    nave_contrario      db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0
                        db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,1
                        db 0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1
                        db 0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0
                        db 0,0,0,0,0,1,1,1,1,1,0,0,0,0,1,1,1,1,0,0
                        db 0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0
                        db 0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1
                        db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,1
                        db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0
                        db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
     cor db 1
     
     naveY dw 80
     naveX dw 10
     alturaNave dw 11
     comprimentoNave dw 20
     flag_move db 0 ; 0 -> cima , 1 -> baixo, 2 -> esquerda , 3-> direita , 4 -> diagonal cima , 5 -> diagnoal baixo
     ;segundos db '00',13,10
     ;segundos_length EQU $ - segundos
     nave_inicial1x dw 10
     nave_inicial2x dw 290
     alienX db 0
     alienY db 0
        
.code

suspende PROC
    push CX
    push AX
    push DX
    xor CX,CXW
    mov DX, 0FFFFh
    mov AH,86h
    int 15h
    
    pop DX
    pop AX
    pop CX
    ret
suspende ENDP

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

    pop Bp
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

print_nave proc
    push ds
    push cx
    push ax
    push di
    push es

    mov cx, 320
    mul cx 
    mov di,ax   
    add di, bx
    
    mov ax, 0A000h
    mov es, ax
    
    mov bl, 11
    laco_desenha_objeto:
        mov cx, 20
        laco_troca_cor:
             mov al,[si]
             cmp al,0
             je desativado
             mov al,cor
             mov [si],al
         desativado:
             movsb
             dec cx
             jnz laco_troca_cor
        add di, 300
        dec bl
        jz fim_desenha_objeto
        jmp laco_desenha_objeto
    
    fim_desenha_objeto:
        pop es
        pop di
        pop ax
        pop cx
        pop ds
        ret
print_nave endp

mover PROC;recebe como parametro  Ax -> y , BX -> x 
    push AX
    push BX
    push CX
    push SI
    push DI
    
    mov cx, 320

    mul CX
    add AX, BX
    mov SI, AX
    mov DI, SI
    CLD
    xor AX,AX
    mov AL, [flag_move]
    push AX
    
    mov AX, 0A000h
    mov ES, AX
    mov DS, Ax
    
    mov BL, 11
    pop AX
    cmp AL, 1
    je MOVE_BAIXO
    cmp AL, 2
    je MOVE_ESQUERDA
    cmp AL,3
    je MOVE_DIREITA
    cmp AL,4
    je MOVE_DIAGONAL_CIMA
    cmp AL,5
    je MOVE_DIAGONAL_BAIXO

;--------------------------MOVER PARA CIMA---------------------------;  
MOVE_CIMA:
    sub DI, 320
LACO_CIMA:
    mov CX,20
    rep movsb

    add SI, 300
    add DI, 300
    dec BL
    jnz LACO_CIMA
    jmp FIM
;--------------------------------------------------------------------;   
;--------------------------MOVER PARA BAIXO-------------------------;  
MOVE_BAIXO:
   add SI, 2880
   add DI, 3200
LACO_BAIXO:
   mov CX,20
   rep movsb
   
   sub SI, 340
   sub DI, 340
   dec BL
   jnz LACO_BAIXO
   jmp FIM
;--------------------------------------------------------------------;
;------------------------MOVER PARA ESQUERDA-------------------------;
MOVE_ESQUERDA:
    sub DI,1
LACO_ESQUERDA:
    mov CX,20
    rep movsb

    add SI, 300
    add DI, 300
    dec BL
    jnz LACO_ESQUERDA
    jmp FIM
;--------------------------------------------------------------------;
;------------------------MOVER PARA DIREITA--------------------------;
MOVE_DIREITA:
    STD
    add SI,20
    add DI,21
LACO_DIREITA:
    mov CX,22
    rep movsb
   
    add SI, 342
    add DI, 342
    dec BL
    jnz LACO_DIREITA
    jmp FIM
;--------------------------------------------------------------------;
;-------------------MOVER PARA DIAGONAL CIMA-------------------------;     
MOVE_DIAGONAL_CIMA:
    sub DI, 322
LACO_DIAGONAL_CIMA: 
    mov CX,20
    rep movsb

    add SI, 300
    add DI, 300
    dec BL
    jnz LACO_DIAGONAL_CIMA   
    JMP FIM
;--------------------------------------------------------------------;
;-------------------MOVER PARA DIAGONAL BAIXO------------------------; 
MOVE_DIAGONAL_BAIXO:    
    add SI, 2880
    add DI, 3198
LACO_DIAGONAL_BAIXO:
    mov CX,20
    rep movsb

    
    sub SI, 340
    sub DI, 340
    dec BL
    jnz LACO_DIAGONAL_BAIXO 
;--------------------------------------------------------------------;    
FIM:
    mov AX,@data
    mov ds,ax
    mov AL , [flag_move]
   cmp AL, 1
   je INC_BAIXO
   cmp AL, 2
   je INC_ESQUERDA
   cmp AL,3
   je INC_DIREITA
   cmp AL,4
   je INC_DIAGONAL_CIMA
   cmp AL,5
   je INC_DIAGONAL_BAIXO

INC_CIMA:
   inc naveY
   jmp ENDI
INC_BAIXO:
    dec naveY
    jmp ENDI
INC_ESQUERDA:
    inc nave_inicial1x
    jmp ENDI
INC_DIREITA:
    dec nave_inicial2x
    jmp ENDI
INC_DIAGONAL_CIMA:
    inc alienY
    dec alienX
    jmp ENDI
INC_DIAGONAL_BAIXO:
    dec alienY
    dec alienX


ENDI:
    pop DI
    pop SI
    pop CX
    pop BX
    pop AX
    ret
mover ENDP

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

    mov AL, [flag_menu]    ; Carrega a flag em AL
    test AL, AL            ; Testa se a flag ? 0 ou 1
    jnz ATIVADO            ; Se a flag for 1, vai para ATIVADO

DESATIVADO: ;JOGAR SELECIONADO
    mov BP, OFFSET menuJogar
    mov CX, menuJogar_length ; tamanho
    mov BL, 0CH ; cor
    mov DL, 2 ;coluna
    mov DH, 15 ; linha 
    call print_string
    
    mov BP, OFFSET menuSair
    mov CX, menuSair_length ; tamanho
    mov BL, 0FH ; cor
    mov DL, 2 ;coluna
    mov DH, 20 ; linha
    call print_string
    jmp FINAL

ATIVADO:;SAIR SELECIONADO
    mov BP, OFFSET menuJogar
    mov CX, menuJogar_length ; tamanho
    mov BL, 0FH ; cor
    mov DL, 2 ;coluna
    mov DH, 15 ; linha 
    call print_string
    
    mov BP, OFFSET menuSair
    mov CX, menuSair_length ; tamanho
    mov BL, 0CH ; cor
    mov DL, 2 ;coluna
    mov DH, 20 ; linha
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
    
    mov cor,5
    mov si, OFFSET nave
    mov ax,80
    mov bx,10
    call print_nave
    
    mov cor,7
    mov si, OFFSET nave_contrario
    mov ax,90
    mov bx,290
    call print_nave
    
LACO_TECLA:
    call verifica_tecla
    cmp AL ,48H
    je TROCAR_COR
    cmp AL, 50H
    je TROCAR_COR
    cmp AL, 73H ;W OU S
    je TROCAR_COR;TROCAR_COR
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
 
LACO_NAVE:
    call suspende
    mov flag_move,3
    mov AX, 90
    mov BX, nave_inicial2x
    mov flag_move, 2
    call mover
    mov AX, 80
    mov BX, nave_inicial1x
    mov flag_move, 3
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