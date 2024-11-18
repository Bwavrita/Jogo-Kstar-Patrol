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
    
    setor_1     db ' ',13,10
                db '               _               __ ',13,10
                db '              | |             /_ |',13,10
                db '      ___  ___| |_ ___  _ __   | |',13,10
                db '     / __|/ _ \ __/ _ \|  __|  | |',13,10
                db '     \__ \  __/ || (_) | |     | |',13,10
                db '     |___/\___|\__\___/|_|     |_|',13,10
                db '                                  ',13,10                                                


    setor1_length EQU $ - setor_1
    
    setor_2         db ' ',13,10
                    db '               _               ___  ',13,10
                    db '              | |             |__ \ ',13,10
                    db '      ___  ___| |_ ___  _ __     ) |',13,10
                    db '     / __|/ _ \ __/ _ \|  __|   / / ',13,10
                    db '     \__ \  __/ || (_) | |     / /_ ',13,10
                    db '     |___/\___|\__\___/|_|    |____|',13,10
                    db ' ',13,10
                                
                                


    setor2_length EQU $ - setor_2
    
    setor_3             db ' ',13,10
                        db '               _               ____   ',13,10
                        db '              | |             |___ \  ',13,10
                        db '      ___  ___| |_ ___  _ __    __) | ',13,10
                        db '     / __|/ _ \ __/ _ \|  __|  |__ <  ',13,10
                        db '     \__ \  __/ || (_) | |     ___) | ',13,10
                        db '     |___/\___|\__\___/|_|    |____/  ',13,10
                        db ' ',13,10
                                                                    
                                 


    setor3_length EQU $ - setor_3
    
    nave    db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
            db 0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
            db 0,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
            db 0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0
            db 0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0
            db 0,0,0,1,1,1,1,0,0,0,0,1,1,1,1,1,0,0,0,0,0
            db 0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0
            db 0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0
            db 0,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
            db 0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 
            db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
     
     
    nave_contrario      db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0
                        db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,1,0
                        db 0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0
                        db 0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0
                        db 0,0,0,0,0,1,1,1,1,1,0,0,0,0,1,1,1,1,0,0,0
                        db 0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0
                        db 0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0
                        db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,1,0
                        db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0
                        db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

    alien db  0,0,0,1,0,0,0,0,0,0,0,1,0,0,0
          db  0,0,0,0,1,0,0,0,0,0,1,0,0,0,0
          db  0,0,0,0,0,1,0,0,0,1,0,0,0,0,0
          db  0,0,0,0,1,1,1,1,1,1,1,0,0,0,0
          db  0,0,0,1,1,0,1,1,1,0,1,1,0,0,0
          db  0,0,1,0,1,1,1,1,1,1,1,0,1,0,0
          db  0,0,1,0,1,1,1,1,1,1,1,0,1,0,0
          db  0,0,1,0,1,0,0,0,0,0,1,0,1,0,0
          db  0,0,0,0,0,1,1,0,1,1,0,0,0,0,0
                        
    preto   db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
            db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
            db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
            db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
            db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
            db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
            db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
            db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
            db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
            db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 
            db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

    cenario db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0
            db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0
            db 0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0
            db 0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
            db 0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
            db 0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0
            db 0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0
            db 0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0
            db 0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
            db 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
            db 420 dup(1)
            db 420 dup(1)
            db 420 dup(1)
            db 420 dup(1)
            db 420 dup(1)
            db 420 dup(1)
            db 420 dup(1)
            db 420 dup(1)
            db 420 dup(1)


            
            
     cor db 1

     cenarioX dw 300
     
     naveY dw 95
     naveX dw 40
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
   ;mov CX,0FH
    xor CX,CX
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
    mov AH, 01h         ; Fun??o 1: Checar tecla
    int 16h             ; Interrup??o do teclado
    jz TECLA_NAO_PRESSIONADA ; Se ZF = 1, nenhuma tecla foi pressionada
    mov AH, 00h         ; Tecla pressionada, prepara para ler
    int 16h             ; Fun??o 0: L? a tecla pressionada
    ret

TECLA_NAO_PRESSIONADA:
    xor AL, AL          ; Retorna 0 em AL para indicar "nenhuma tecla"
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
    mov cx, 21
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
             add di, 299
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
    push ES
    push DS
    
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
    mov CX,21
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
    mov CX,21
    rep movsb
   
    add SI, 340
    add DI, 340
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
   dec naveY
   jmp ENDI
INC_BAIXO:
   inc naveY
    jmp ENDI
INC_ESQUERDA:
    dec nave_inicial2x
    jmp ENDI
INC_DIREITA:
    inc nave_inicial1x
    jmp ENDI
INC_DIAGONAL_CIMA:
    inc alienY
    dec alienX
    jmp ENDI
INC_DIAGONAL_BAIXO:
    dec alienY
    dec alienX


ENDI:
    pop DS
    pop ES  
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

mover_nave_inicial PROC
    push AX
    push BX
    push SI
    push DI
    call suspende
    mov AX, 90
    mov BX, nave_inicial2x
    mov flag_move, 2
    call mover
    mov AX, 80
    mov BX, nave_inicial1x
    mov flag_move, 3
    call mover
    
    pop DI
    pop SI
    pop BX
    pop AX
    ret
mover_nave_inicial ENDP

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
    mov DL, 5 ;coluna
    mov DH, 7 ; linha
    call print_string
    jmp FINALIZAR2
    
SETOR2:
    mov BP, OFFSET setor_2
    mov CX, setor2_length; tamanho
    mov BL, 0CH ; cor
    mov DL, 0 ;coluna
    mov DH, 7 ; linha
    call print_string
    jmp FINALIZAR2
    
SETOR3:
    mov BP, OFFSET setor_3
    mov CX, setor3_length ; tamanho
    mov BL, 0CH ; cor
    mov DL, 0 ;coluna
    mov DH, 7 ; linha
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
    call suspende
    call suspende
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
    push si

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
    cmp AL, 0
    call mover_nave_inicial
    je LACO_TECLA
    JMP LACO_TECLA    

TROCAR_COR:
    xor [flag_menu], 1          ; Inverte a flag: 0 -> 1 ou 1 -> 0
    call imprime_botoes
    JMP LACO_TECLA

SELECT:
    xor AX,AX
    mov AL, [flag_menu]         ; Carrega a flag em AL
    
    call video
    pop SI
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

printar_jogo PROC
    call video
;-------------------------------------------------;  
;-------------------1 nave------------------------; 
    mov cor,5
    mov si, OFFSET nave
    mov ax,25
    mov bx,5
    call print_nave
;-------------------------------------------------;  
;-------------------2 nave------------------------; 
    mov cor,20H
    mov si, OFFSET nave
    mov ax,45
    mov bx,5
    call print_nave
;-------------------------------------------------;  
;-------------------3 nave------------------------; 
    mov cor,3
    mov si, OFFSET nave
    mov ax,65
    mov bx,5
    call print_nave
;-------------------------------------------------;  
;-------------------4 nave------------------------;     
    mov cor,2
    mov si, OFFSET nave
    mov ax,85
    mov bx,5
    call print_nave
;-------------------------------------------------;  
;-------------------5 nave------------------------;     
    mov cor,0Eh
    mov si, OFFSET nave
    mov ax,105
    mov bx,5
    call print_nave
;-------------------------------------------------;  
;-------------------6 nave------------------------;     
    mov cor,0CH
    mov si, OFFSET nave
    mov ax,125
    mov bx,5
    call print_nave
;-------------------------------------------------;  
;-------------------7 nave------------------------;
    mov cor,4h   
    mov si, OFFSET nave
    mov ax,145
    mov bx,5
    call print_nave
;-------------------------------------------------;  
;-------------------8 nave------------------------;     
    mov cor,0DH
    mov si, OFFSET nave
    mov ax,165
    mov bx,5
    call print_nave
;-------------------------------------------------;  
;-----------------nave principal------------------;
    mov cor,0DH
    mov si, OFFSET nave
    mov ax,95
    mov bx,40
    call print_nave       
LACO_TECLA_JOGO:
    call verifica_tecla
    cmp AL ,48H
    je CIMA
    cmp AL, 50H
    je BAIXO
    cmp AL, 73H ;W OU S
    je BAIXO;TROCAR_COR
    cmp AL, 77H ; W OU S
    je CIMA
    cmp AL, 0DH ; enter
    je TIRO
    cmp AL, 20h ; spaco
    je TIRO
    cmp AL, 0
    je LACO_TECLA_JOGO
    jmp LACO_TECLA_JOGO
    
CIMA:
    mov AX, naveY
    mov BX, naveX
    mov flag_move, 0
    call mover
    jmp LACO_TECLA_JOGO
BAIXO:
    mov AX, naveY
    mov BX, naveX
    mov flag_move, 1
    call mover
    jmp LACO_TECLA_JOGO
TIRO:
 
   ret
printar_jogo ENDP

inicio:
    mov AX, @data
    mov DS, AX
    mov es, AX
    ;call  ?
    call print_logo_inicial
    call troca_menu
    call printar_jogo
    
    mov AH, 4CH
    int 21h
    
end inicio