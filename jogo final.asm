.model small

.stack 100H

.data
    menu:
                db '   _       _                 _     _  ',13,10             
                db '   /_\  ___| |_ ___ _ __ ___ (_) __| |',13,10
                db '  //_\\/ __| __/ _ | |__/ _ \| |/ _| |',13,10
                db ' /  _  \__ | ||  __| | | (_) | | (_| |',13,10
                db ' \_/ \_____/___\___|_|  \___/|_|\____|',13,10
                db '    / / /\ \ \____ _   _              ',13,10
                db '    \ \/  \/ / _  | | | |             ',13,10
                db '     \  /\  | (_| | |_| |             ',13,10
                db '      \/  \/ \____|\___ |             ',13,10
                db '                   |___/              ',13,10
                db '                                      ',13,10
                
    menu_lenght EQU $-menu
                
                
    menuInicial db '',13,10
                db '',13,10
                db '',13,10
                db          218,196,196,218          ,13,10     
                db          221,' Jogar',221         ,13,10
                db          192,196,196,192          ,13,10
                db          218,196,196,218          ,13,10     
                db          221,' Sair',221          ,13,10
                db          192,196,196,192          ,13,10
    menuInicial_lenght EQU $-menuInicial

.code

print_logo_inicial PROC

    push AX
    push SI
    push CX
    push DI

    mov bp, OFFSET menuInicial    ; ES:BP MENSAGEM
    mov ah, 13h                     ; int 13h - escreve string
    mov al, 01h                     ; atributo em bl, move cursor
    xor bh, bh                      ; pagina de video 0
    mov bl, 0AH                     ; attribute 
    mov cx, menuInicial_lenght     ; tamanho da string
    mov dh, 1                       ; linha string
    mov dl, 1                       ; coluna string
    int 10h                         ; chama bios
    
    pop DI
    pop CX
    pop SI
    pop AX

    ret

print_logo_inicial ENDP

video PROC
    push AX
    
    mov AX,13H
    int 10H 
          
    pop AX  
    ret
video ENDP

inicio:
    mov AX,@DATA
    mov DS,AX
    call 
    call print_logo_inicial
    mov AH,4CH
    int 21h
    
end inicio