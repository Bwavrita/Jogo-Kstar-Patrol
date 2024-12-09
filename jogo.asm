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
            
       tiro db 0,0,0,1,1,1,0,0
            db 0,1,1,1,1,1,1,1
            db 0,0,0,1,1,1,0,0
     
     cenarioX dw 300
     
     tiroX dw ?
     tiroY dw ?  ;N?O TROCAR MAIS 
     
     
     
     naveY dw 95
     naveX dw 40 ;N?O TROCAR MAIS
     
     nave_secX dw 5
     
     alienY dw 0
     alienX dw 305 ; N?O TROCA MAIS
     
     nave_inicial1x dw 10
     nave_inicial2x dw 290
     
     pontuacao db 'Pontos: 0000' , 13,10
     pontuacao_lenght EQU $ - pontuacao
     tempo db 'Tempo: 60' ,13,10
     tempo_lenght EQU $ - tempo
     
     flag_move db 0 ; 0 -> cima , 1 -> baixo, 2 -> esquerda , 3-> direita , 4 -> diagonal cima , 5 -> diagnoal baixo
     flag_tiro db 0
     tiro_ativado db 0
     flag_menu db 0 ; 0 JOGAR SELECIONADO , 1 SAIR SELECIONADO
     flag_setor db 1 ; 1 - setor 1, 2 - setor 2 , 3 - setor 3 , 4 - ganhou , 0 - morreu
     flag_alien db 0
     flag_naves dw 1,1,1,1,1,1,1,1,1,1
     seed dw 60
     segundos dw 60
     
     color db 1
     
        
.code

;------------------------------------FUN??ES PRIMARIAS---------------------------------------------;

video PROC
    push AX
    mov AX, 13H      
    int 10H         
    pop AX  
    ret
video ENDP

suspend PROC
    push CX
    push AX
    push DX
    xor CX,CX
    mov DX, 0FFFh
    mov AH,86h
    int 15h
    
    pop DX
    pop AX
    pop CX
    ret
suspend ENDP

key_verify PROC
    mov AH, 01h         ; Fun??o 1: Checar tecla
    int 16h             ; Interrup??o do teclado
    jz key_not_pressed ; Se ZF = 1, nenhuma tecla foi pressionada
    mov AH, 00h         ; Tecla pressionada, prepara para ler
    int 16h             ; Fun??o 0: L? a tecla pressionada
    ret
key_not_pressed:
    xor AL, AL          ; Retorna 0 em AL para indicar "nenhuma tecla"
    ret
key_verify ENDP

inc_points PROC
    push SI
    push AX
    
    mov SI, OFFSET pontuacao
    add SI,9
    mov AX,[SI]
    cmp AL,'9'
    je its_nine
    
    add AX,1
    mov [SI],AX
    jmp FIM
    
its_nine:
    sub AX,9
    mov [SI],AX
    dec SI
    mov AX,[SI]
    inc AX
    mov [SI],AX

FIM:
    pop AX
    pop SI
    ret
    inc_points ENDP

random PROC
    push AX
    push BX
    push DX
    push CX

    ; Pegar o tempo do sistema para incrementar a seed
    mov AH, 2Ch             ; Servi?o para pegar o tempo atual
    int 21h                 ; Executa a interrup??o
    xor AX, DX              ; Mistura os segundos e os ticks
    add [seed], AX          ; Incrementa a seed com um valor mais din?mico

    ; Gerador Linear Congruente: new_seed = (A * seed + C) mod M
    mov AX, [seed]
    mov BX, 22695        ; Constante A (grande n?mero primo)
    mul BX                  ; AX = AX * A
    add AX, 1               ; Constante C (incremento)
    mov [seed], AX          ; Atualiza a seed

    ; Retorna o valor gerado
    and AX, 0FFFFh          ; Limita o valor a 16 bits (opcional)
    
    pop CX
    pop DX
    pop BX
    pop AX
    ret
random ENDP


generate_coordinates PROC
    push AX
    push BX
    push CX
    
    ; Gerar coordenada Y
    call random          ; Gera um n?mero aleat?rio
    mov AX,[seed]
    mov CX, 200         ; Altura m?xima
    xor DX, DX
    div CX               ; AX / CX -> Quociente em AL (0-199)
    mov [alienY], AX     ; Guardar Y em coordY

    pop CX
    pop BX
    pop AX
    ret
generate_coordinates ENDP

change_time PROC
    push SI
    push AX
    ;tempo db Tempo: 60 ,13,10
    dec segundos
    mov SI, OFFSET tempo
    add SI,8
    mov AX,[SI]
    cmp AL,'0'
    je its_zero
    
    sub AX,1
    mov [SI],AX
    jmp FIM9
    
its_zero:
    add ax,9
    mov [SI],ax
    dec SI
    mov AX,[SI]
    cmp AL,'0'
    je FIM9
    dec AX
    mov [SI],AX
    
FIM9:
    pop AX
    pop SI 
    ret
change_time ENDP

restart_time PROC
    push SI
    push AX
    mov SI, OFFSET tempo
    add SI,8
    mov AL,'0'
    mov [SI],AX
    dec SI
    mov AL,'6'
    mov [SI],AX
    
    pop AX
    pop SI 
    ret
restart_time ENDP

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

print_object proc ;recebe como parametro  AX -> Y , BX -> X , DL -> altura, DH -> comprimento
    push ds
    push cx
    push ax
    push di
    push es
    
    CLD
    push DX
    mov cx, 320
    mul cx 
    mov di,ax   
    add di, bx
    
    mov ax, 0A000h
    mov es, ax
    
    pop DX
    xor bx,bx
    xor cx,cx
    mov bx,dx
    mov dl,bh
    loop_draw_object:
    mov cl, bh
        loop_change_color:
             mov al,[si]
             cmp al,0
             je disabled
             mov al,color
             mov [si],al
         disabled:
             movsb
             dec cx
             jnz loop_change_color
             mov ax, 320
             xor dh,dh
             sub ax,dx
             add di,ax
        dec bl
        jz FIM2
        jmp loop_draw_object
    
    FIM2:
        pop es
        pop di
        pop ax
        pop cx
        pop ds
        ret
print_object endp

move PROC;recebe como parametro  Ax -> y , BX -> x , DL -> altura, DH -> comprimento
    push AX
    push BX
    push CX
    push SI
    push DI
    push ES
    push DS
    push DX
    
    push DX
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
    
    pop AX
    pop DX
    xor BX,BX
    xor CX,CX
    mov BX,DX
    mov dl,bh
    xor dh,dh
    
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
    mov cl,bh
    rep movsb
    
    mov ax,320
    sub ax,dx
    add SI, ax
    add DI, ax
    dec BL
    jnz LACO_CIMA
    jmp FIM3
;--------------------------------------------------------------------;   
;--------------------------MOVER PARA BAIXO-------------------------;  
MOVE_BAIXO:
   add SI, 2880
   add DI, 3200
LACO_BAIXO:
   mov cl,bh
   rep movsb
   
   mov ax,320
   add ax,dx
   sub SI, ax
   sub DI, ax
   dec BL
   jnz LACO_BAIXO
   jmp FIM3
;--------------------------------------------------------------------;
;------------------------MOVER PARA ESQUERDA-------------------------;
MOVE_ESQUERDA:
    sub DI,1
LACO_ESQUERDA:
    mov cl,bh
    rep movsb
    
    mov ax,320
    sub ax,dx
    add SI, ax
    add DI, ax
    dec BL
    jnz LACO_ESQUERDA
    jmp FIM3
;--------------------------------------------------------------------;
;------------------------MOVER PARA DIREITA--------------------------;
MOVE_DIREITA:
    STD
    add SI,dx
    add DI,dx
    inc DI
LACO_DIREITA:
    mov cl,bh
    inc cl
    rep movsb
   
    mov ax,320
    add ax,dx
    add SI,ax
    add DI,ax
    dec BL
    jnz LACO_DIREITA
    jmp FIM3
;--------------------------------------------------------------------;
;-------------------MOVER PARA DIAGONAL CIMA-------------------------;     
MOVE_DIAGONAL_CIMA:
    sub DI, 322
LACO_DIAGONAL_CIMA: 
    mov cl,bh
    rep movsb
    
    mov ax,320
    sub ax,dx
    add SI, ax
    add DI, ax
    dec BL
    jnz LACO_DIAGONAL_CIMA   
    JMP FIM3
;--------------------------------------------------------------------;
;-------------------MOVER PARA DIAGONAL BAIXO------------------------; 
MOVE_DIAGONAL_BAIXO:    
    add SI, 2880
    add DI, 3198
LACO_DIAGONAL_BAIXO:
    mov cl,bh
    rep movsb

    mov ax,320
    add ax,dx
    sub SI, ax
    sub DI, ax
    dec BL
    jnz LACO_DIAGONAL_BAIXO 
;--------------------------------------------------------------------;    
FIM3:
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
    cmp flag_alien,1
    je INC_ESQUERDA_ALIEN
    dec nave_inicial2x
    jmp ENDI
INC_ESQUERDA_ALIEN:
    dec alienX
    jmp ENDI
INC_DIREITA:
    cmp flag_tiro , 1
    je INC_DIREITA_TIRO
    inc nave_inicial1x
    jmp ENDI
INC_DIREITA_TIRO:
    inc tiroX
    jmp ENDI
INC_DIAGONAL_CIMA:
    inc alienY
    dec alienX
    jmp ENDI
INC_DIAGONAL_BAIXO:
    dec alienY
    dec alienX


ENDI:
    pop DX
    pop DS
    pop ES  
    pop DI
    pop SI
    pop CX
    pop BX
    pop AX
    ret
move ENDP

colision PROC ; DH -> altura do objeto, DL -> largura do objeto
              ; SI -> ponteiro para o primeiro objeto
              ; DI -> ponteiro para o segundo objeto
              ; Retorna: ZF = 1 se colis?o encontrada, ZF = 0 caso contr?rio  
    push bx
    push cx
    push dx
    xor ax,ax
    xor bx,bx
    xor cx,cx

    mov bh, DL
    mov bl, DH

looop:
    mov cl, bh
inner_loop:
    cmp si,di
    je finded_colision
    inc si
    cmp si, di
    je finded_colision
    dec di
    cmp si, di
    je finded_colision
    loop inner_loop

    mov ax, 320
    xor dx,dx
    mov dl,bh
    sub ax, dx
    add si, ax
    mov ax,320
    add ax,dx
    add di, ax

    dec bl
    jnz looop
    jmp end_colision
    
finded_colision:
    mov ax, 1
    jmp FIM14

end_colision:
    xor ax,ax
    
FIM14:
    pop dx
    pop cx
    pop bx
    ret

colision ENDP

;------------------------------------FUN??ES SECUNDARIAS---------------------------------------------;
   
move_ship_initial PROC
    push AX
    push BX
    push SI
    push DI
    push DX
    
    call suspend
    mov AX, 90
    mov BX, nave_inicial2x
    mov DH,21
    mov DL,11
    mov flag_move, 2
    call move
    mov AX, 80
    mov BX, nave_inicial1x
    mov DH,21
    mov DL,11
    mov flag_move, 3
    call move
    
    pop DX
    pop DI
    pop SI
    pop BX
    pop AX
    ret
move_ship_initial ENDP

move_shot PROC
    push AX
    push BX
    push DX
    
    cmp tiro_ativado,0
    je FIM5
    cmp tiroX,315
    je FIM4
    
    mov AX,tiroY
    mov BX,tiroX
    mov DH,8
    mov DL,3
    mov flag_move,3
    mov flag_tiro, 1
    call move
    jmp FIM5
    
FIM4:
    mov tiro_ativado,0
    mov AX,tiroY
    mov BX,tiroX
    mov dl,3
    mov dh,8
    mov SI, OFFSET preto
    call print_object
FIM5:
    pop DX
    pop BX
    pop AX
    ret
move_shot ENDP

move_alien PROC
    push AX
    push BX
    push DX
    
    cmp flag_alien,0
    je FIM16
    cmp alienX,0
    je FIM17
    
    mov AX,alienY
    mov BX,alienX
    mov DH,16
    mov DL,10
    mov flag_move,2
    call move
    jmp FIM5

FIM17: 
   call print_black_alien
   mov flag_alien, 0
   
FIM16:
    pop DX
    pop BX
    pop AX
    ret
    move_alien ENDP

print_header PROC
    push BP
    push CX
    push bx
    PUSH dx

    mov BP, OFFSET tempo
    mov CX, tempo_lenght ; tamanho
    mov BL, 0CH ; cor
    mov DL, 71 ;coluna
    mov DH, 0 ; linha
    call print_string
    
    mov BP, OFFSET pontuacao
    mov CX, pontuacao_lenght ; tamanho
    mov BL, 0CH ; cor
    mov DL, 0 ;coluna
    mov DH, 0 ; linha
    call print_string
    
    pop DX
    pop BX
    pop CX
    pop BP
    ret
print_header ENDP

print_alien PROC
    push SI
    push AX
    push BX
    push DX
    
    mov flag_alien,1
    call generate_coordinates
    mov color,0DH
    mov si, OFFSET alien
    mov ax,alienY
    mov bx,alienX
    mov dl,9
    mov dh,15
    call print_object
    
    pop DX
    pop BX
    pop AX
    pop SI
    ret
print_alien ENDP

generate_alien PROC
    push AX
    push BX
    push DX
    
    cmp flag_alien,1
    je FIM12
    ;cmp segundos, 57
    ;jge FIM12
    
    mov DX,1
    
    call random          
    mov AX, [seed]       
    mov CX, 100          
    div CX              
    cmp DX, 0            
    jne FIM12

    call print_alien   

FIM12:    
    pop DX
    pop BX
    pop AX
    ret
generate_alien ENDP

print_bottons PROC
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
    jnz ACTIVATE            ; Se a flag for 1, vai para ATIVADO

DEACTIVATE: ;JOGAR SELECIONADO
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
    jmp FIM6

ACTIVATE:;SAIR SELECIONADO
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
    jmp FIM6

FIM6:
    pop DX
    pop BP
    pop BX
    pop AX
    pop CX
    ret
print_bottons ENDP

print_logo_initial PROC
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
    
    call print_bottons
    
    mov color,5
    mov si, OFFSET nave
    mov ax,80
    mov bx,10
    mov dl,11
    mov dh,21
    call print_object
    
    mov color,7
    mov si, OFFSET nave_contrario
    mov ax,90
    mov bx,290
    mov dl,11
    mov dh,21
    call print_object
    
loop_key:
    call key_verify
    cmp AL ,48H
    je change_color
    cmp AL, 50H
    je change_color
    cmp AL, 73H ;W OU S
    je change_color;TROCAR_COR
    cmp AL, 77H ; W OU S
    je change_color
    cmp AL, 0DH ; enter
    je SELECT
    cmp AL, 20h ; spaco
    je SELECT
    cmp AL, 0
    call move_ship_initial
    je loop_key
    JMP loop_key    

change_color:
    xor [flag_menu], 1          ; Inverte a flag: 0 -> 1 ou 1 -> 0
    call print_bottons
    JMP loop_key

SELECT:
    xor AX,AX
    mov AL, [flag_menu]         ; Carrega a flag em AL

    pop SI
    pop DX
    pop CX
    pop BX
    pop BP
    ret
print_logo_initial ENDP


print_sector PROC
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
    je SECTOR1
    cmp AL, 2
    je SECTOR2
    cmp AL, 3
    je SECTOR3 
    cmp AL, 4
    je WIN
    jz DIE
    
    
SECTOR1:
    mov BP, OFFSET setor_1
    mov CX, setor1_length ; tamanho
    mov BL, 0CH ; cor
    mov DL, 5 ;coluna
    mov DH, 7 ; linha
    call print_string
    jmp FIM7
    
SECTOR2:
    mov BP, OFFSET setor_2
    mov CX, setor2_length; tamanho
    mov BL, 0CH ; cor
    mov DL, 0 ;coluna
    mov DH, 7 ; linha
    call print_string
    jmp FIM7
    
SECTOR3:
    mov BP, OFFSET setor_3
    mov CX, setor3_length ; tamanho
    mov BL, 0CH ; cor
    mov DL, 0 ;coluna
    mov DH, 7 ; linha
    call print_string
    jmp FIM7
    
WIN:
    mov BP, OFFSET setor_1
    mov CX, setor1_length ; tamanho
    mov BL, 0CH ; cor
    mov DL, 2 ;coluna
    mov DH, 15 ; linha
    call print_string
    jmp FIM7
    
DIE:
    mov BP, OFFSET setor_1
    mov CX, setor1_length ; tamanho
    mov BL, 0CH ; cor
    mov DL, 2 ;coluna
    mov DH, 15 ; linha
    call print_string
    
FIM7:
    call suspend
    call suspend
    pop DX
    pop BP
    pop BX
    pop AX
    pop CX
    ret
print_sector ENDP

change_menu PROC
    xor AX, AX
    mov AL, [flag_menu]         ; Carrega a flag em AL (0 = Jogar, 1 = Sair)

    cmp AL, 1                   ; Verifica se "sair" foi selecionado
    je FIM8
    
play:
    call video                  ; Reset da tela
    call print_sector
    
FIM8:    
    ret
change_menu ENDP

print_black_nave PROC ;recebe ax -> Y e bx -> X ; pois tem muitas naves
    push DX
    push SI
    
    mov dl,11
    mov dh,21
    mov SI,OFFSET preto
    call print_object
    mov flag_alien,0
    
    pop SI
    pop DX
    ret
print_black_nave ENDP

print_black_alien PROC
    push AX
    push BX
    push DX
    push SI

    mov AX,alienY
    mov BX,alienX
    mov dl,9
    mov dh,15
    mov SI,OFFSET preto
    call print_object
    mov flag_alien,0
    
    pop SI
    pop DX
    pop BX
    pop AX
    ret
print_black_alien ENDP

print_black_shot PROC
    push AX
    push BX
    push DX
    push SI

    mov AX,tiroY
    mov BX,tiroX
    mov dl,3
    mov dh,9
    mov SI,OFFSET preto
    call print_object
    mov tiro_ativado,0
    mov flag_tiro,0
    
    pop SI
    pop DX
    pop BX
    pop AX
    ret
print_black_shot ENDP

print_game PROC
    call video
;-------------------------------------------------;  
;-------------------1 nave------------------------; 
    mov color,5
    mov ax,15
    mov bx,nave_secX
    mov dl,11
    mov dh,21
    mov si, OFFSET nave
    call print_object
;-------------------------------------------------;  
;-------------------2 nave------------------------; 
    mov color,20H
    mov ax,35
    mov bx,nave_secX
    mov dl,11
    mov dh,21
    mov si, OFFSET nave
    call print_object
;-------------------------------------------------;  
;-------------------3 nave------------------------; 
    mov color,3
    mov ax,55
    mov bx,nave_secX
    mov dl,11
    mov dh,21
    mov si, OFFSET nave
    call print_object
;-------------------------------------------------;  
;-------------------4 nave------------------------;     
    mov color,2
    mov ax,75
    mov bx,nave_secX
    mov dl,11
    mov dh,21
    mov si, OFFSET nave
    call print_object
;-------------------------------------------------;  
;-------------------5 nave------------------------;     
    mov color,0Eh
    mov ax,95
    mov bx,nave_secX
    mov dl,11
    mov dh,21
    mov si, OFFSET nave
    call print_object
;-------------------------------------------------;  
;-------------------6 nave------------------------;     
    mov color,0CH
    mov ax,115
    mov bx,nave_secX
    mov dl,11
    mov dh,21
    mov si, OFFSET nave
    call print_object
;-------------------------------------------------;  
;-------------------7 nave------------------------;
    mov color,4h   
    mov ax,135
    mov bx,nave_secX
    mov dl,11
    mov dh,21
    mov si, OFFSET nave
    call print_object        
;-------------------------------------------------;  
;-------------------8 nave------------------------;     
    mov color,0DH
    mov si, OFFSET nave
    mov ax,155
    mov bx,nave_secX
    mov dl,11
    mov dh,21
    call print_object
;-------------------------------------------------;  
;-----------------nave principal------------------;
    mov color,0DH
    mov si,OFFSET nave
    mov ax,95
    mov bx,40
    mov dl,11
    mov dh,21
    call print_object
;-------------------------------------------------; 
;----------------print header---------------------;   
    XOR CX,CX
    mov CX,220
    call print_header

;------------------------LOOP JOGO----------------------------;

loop_key_game: 
    call key_verify
    call update_game
    call generate_alien
    
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
    je loop_key_game
    jmp loop_key_game
    
CIMA:
    mov AX, naveY
    mov BX, naveX
    mov flag_move, 0
    mov DL,11
    mov DH,20
    call move
    jmp loop_key_game
BAIXO:
    mov AX, naveY
    mov BX, naveX
    mov DL,11
    mov DH,20
    mov flag_move, 1
    call move
    jmp loop_key_game
TIRO:
    cmp tiro_ativado, 1
    je loop_key_game
    mov AX, naveY
    mov BX , naveX
    add AX , 4
    add BX, 22
    mov tiroY, AX
    mov tiroX, BX
    mov AX,tiroY
    mov BX,tiroX
    mov color, 1
    mov dl,3
    mov dh,8
    mov SI, OFFSET tiro
    mov tiro_ativado,1
    call print_object
    jmp loop_key_game
 
   ret
print_game ENDP

update_game PROC ;recebe cx
    push AX
    push BX
    push DX
    push SI
    push DI
    
    cmp CX,0
    jnz continue_loop
    call change_time
    call print_header
    mov CX,220
continue_loop:    
    dec CX
    xor AX,AX
    call suspend
    call move_shot; se for testar o Y SI -> alien DI -> tiro
    call move_alien
    mov SI,tiroX ; se for X SI -> tiro DI -> alien
    mov DI,alienX
    mov dh,3
    mov dl,5
    call colision
    
    push AX
    
    mov SI,alienY
    mov DI,tiroY
    mov dh,3
    mov dl,5
    call colision
    pop BX
    
    and AX,BX
    jz colision_nave_sec
    
    call print_black_alien
    call print_black_shot    

;-------------------------------------------------------------------------------------------------;    
;--------------------------TESTAR COLIS?O COM NAVE SECUNDARIA E ALIEN---------------------------;
colision_nave_sec:
    mov CX, 15                         

loop_colision_nave_sec:
    add CX,20
    cmp CX, 175
    je colision_nave_main 
    mov SI, nave_secX     
    mov DI, alienX        
    mov DH, 10             
    mov DL, 7            
    call colision 
    
    mov BX, AX            
    mov SI, alienY        
    mov DI,CX
    mov DH, 7             
    mov DL, 10  
    call colision         
    and AX, BX            
    jnz handle_collision  
          
    jmp loop_colision_nave_sec  
    
handle_collision:
    call print_black_alien
    mov AX,CX
    mov BX, nave_secX      
    call print_black_nave  
    jmp loop_colision_nave_sec 
    
;-------------------------------------------------------------------------------------------------;
;-----------------------------------------NAVE PRINCIPAL------------------------------------------;
   
colision_nave_main:
    mov SI,naveX
    mov DI,alienX
    mov dh,10
    mov dl,7
    call colision
    
    push AX
    
    mov SI,alienY
    mov DI,naveY
    mov dh,10
    mov dl,7
    call colision
    pop BX
    
    and AX,BX
    jz FIM10
    
    call print_black_alien
    mov AX,naveY
    mov BX,naveX
    call print_black_nave

      
FIM10:
    pop DI
    pop SI
    pop DX
    pop BX
    pop AX
    ret
update_game ENDP

inicio:
    mov AX, @data
    mov DS, AX
    mov es, AX
    call video
    ;call print_logo_initial
    ;call change_menu
    call print_game     
    
    ;call print_alien
    mov si, OFFSET alien
    mov ax,100
    mov bx,305
    mov dl,9
    mov dh,15
    call print_object
    mov flag_alien,1
    call suspend
    call suspend
    
    mov AX,100
    mov BX,305
    mov DH,16
    mov DL,10
    mov flag_move,2

        
    
    
    
    mov AH, 4CH
    int 21h
    
    end inicio