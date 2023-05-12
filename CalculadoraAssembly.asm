org 100h

jmp start

;variãveis      

start:
    call layout
    call visor
    call botoes
    call numpad
    call rato   
         
layout:
    mov al, 13h      ;modo de video gráfico
	mov ah, 0        ;faz set do video mode 
	int 10h
	
	mov ah, 2        
    mov dl, 37       ;coordenadas x coluna
    mov dh, 2        ;coordenadas y linha
    int 10h

    mov ah, 2        
    mov dl, 'X'      ;escrever o caracter X
    int 21h
    
    mov ah, 2
    mov dl, 28       ;coordenadas x
    mov dh, 5        ;coordenadas y 
    int 10h
    
    mov ah, 2
    mov dl, 'D'      ;escreve o caracter D
    int 21h
    
    mov ah, 2
    mov dl, 28
    mov dh, 6
    int 10h
    
    mov ah, 2        ;escreve o caracter I
    mov dl, 'I'
    int 21h
    
    mov ah, 2
    mov dl, 28
    mov dh, 7
    int 10h
    
    mov ah, 2
    mov dl, 'V'      ;escreve o caracter V
    int 21h
    
    mov ah, 2
    mov dl, 34
    mov dh, 5
    int 10h
    
    mov ah, 2
    mov dl, 'R'      ;escreve o caracter R
    int 21h
    
    mov ah, 2
    mov dl, 34
    mov dh, 6
    int 10h
    
    mov ah, 2
    mov dl, 'A'      ;escreve o caracter A
    int 21h
    
    mov ah, 2
    mov dl, 34       
    mov dh, 7        
    int 10h
    
    mov ah, 2
    mov dl, 'I'      ;escreve o caracter I
    int 21h
    
    mov ah, 2
    mov dl, 34
    mov dh, 8
    int 10h

    mov ah, 2
    mov dl, 'Z'      ;escreve o caracter Z
    int 21h
    
    mov ah, 2
    mov dl, 28
    mov dh, 14
    int 10h
           
    mov ah, 2
    mov dl, 'G'      ;escreve o caracter G
    int 21h       
    mov ah, 2
    mov dl, 'u'      ;escreve o caracter u
    int 21h
    mov ah, 2
    mov dl, 'a'      ;escreve o caracter a
    int 21h
    mov ah, 2
    mov dl, 'r'      ;escreve o caracter r
    int 21h
	mov ah, 2
    mov dl, 'd'      ;escreve o caracter d
    int 21h
    mov ah, 2
    mov dl, 'a'      ;escreve o caracter a
    int 21h 
    mov ah, 2
    mov dl, 'r'      ;escreve o caracter r
    int 21h
    
    mov ah, 2
    mov dl, 29       ;segue para a coordenada x, coluna 29 
    mov dh, 19       ;segue para a coordenaa y, linha 19
    int 10h
           
    mov ah, 2
    mov dl, 'A'      ;escreve o caracter a
    int 21h       
    mov ah, 2
    mov dl, 'b'      ;escreve o caracter b
    int 21h
    mov ah, 2
    mov dl, 'r'      ;escreve o caracter r
    int 21h
    mov ah, 2
    mov dl, 'i'      ;escreve o caracter i
    int 21h
	mov ah, 2
    mov dl, 'r'      ;escreve o caracter r
    int 21h
    
    mov ah, 2
    mov dl, 19
    mov dh, 16
    int 10h
    
    mov ah, 2
    mov dl, '<'      ;escreve o caracter <
    int 21h
    mov ah, 2
    mov dl, '-'      ;escreve o caracter -
    int 21h
    
    mov ah, 2
    mov dl, 19
    mov dh, 20
    int 10h
    
    mov ah, 2
    mov dl, 'E'      ;escreve o caracter E
    int 21h
    mov ah, 2
    mov dl, 'n'      ;escreve o caracter n
    int 21h
    mov ah, 2
    mov dl, 't'      ;escreve o caracter t
    int 21h 
    
    mov ah, 2
    mov dl, 34
    mov dh, 8
    int 10h
	
	mov ah, 0ch
	mov al, 10
	mov cx, 10
	mov dx,10
	int 10h
	
	mov bx, 300
	contCima:       ;desenha a linha de cima da interface grafica 
	int 10h
	inc cx
	dec bx
	jnz contCima
	
	mov bx, 180
	contDir:        ;desenha a linha direita da interface grafica
	int 10h
	inc dx
	dec bx
	jnz contDir
	
	mov bx, 300
	contBaixo:      ;desenha a linha de baixo da interface grafica
	int 10h
	dec cx
	dec bx
	jnz contBaixo
	
	mov bx, 180
	contEsq:        ;desenha a linha esquerda da interface grafica
	int 10h
	dec dx
	dec bx
	jnz contEsq
	
visor:
    mov ah, 0ch
	mov al, 5
	mov cx, 30
	mov dx,30
	int 10h
	
	mov bx, 165     ;desenha a linha de cima do visor   
	visorCima:
	int 10h
	inc cx
	dec bx
	jnz visorCima
	
	mov bx, 45
	visorDir:       ;desenha a linha da direita do visor 
	int 10h
	inc dx
	dec bx
	jnz visorDir
	
	mov bx, 165
	visorBaixo:
	int 10h
	dec cx
	dec bx
	jnz visorBaixo  ;desenha a linha de baixo do visor 
	
	mov bx, 45
	visorEsq:
	int 10h
	dec dx
	dec bx
	jnz visorEsq    ;desenha a linha da esquerda do visor 
	
botoes: 
    ;botao divisao
    mov ah, 0ch
	mov al, 9
	mov cx, 215
	mov dx,30
	int 10h
	
	mov bx, 30
	divCima:       ;desenha a linha de cima do botao da divisao 
	int 10h
	inc cx
	dec bx
	jnz divCima
	
	mov bx, 45
	divDir:        ;desenha a linha da direita do botao da divisao 
	int 10h
	inc dx
	dec bx
	jnz divDir
	
	mov bx, 30
	divBaixo:      ;desenha a linha de baixo do botao da divisao 
	int 10h
	dec cx
	dec bx
	jnz divBaixo
	
	mov bx, 45
	divEsq:        ;desenha a linha da esquerda do botao da divisao 
	int 10h
	dec dx
	dec bx
	jnz divEsq
	
	;botao raiz
	mov ah, 0ch
	mov al, 9
	mov cx, 260
	mov dx,30
	int 10h
	
	mov bx, 30
	raizCima:       ;desenha a linha de cima do botao da raiz 
	int 10h
	inc cx
	dec bx
	jnz raizCima
	
	mov bx, 45
	raizDir:        ;desenha a linha da direita do botao da raiz 
	int 10h
	inc dx
	dec bx
	jnz raizDir
	
	mov bx, 30
	raizBaixo:      ;desenha a linha de baixo do botao da raiz 
	int 10h
	dec cx
	dec bx
	jnz raizBaixo
	
	mov bx, 45
	raizEsq:        ;desenha a linha da esquerda do botao da raiz 
	int 10h
	dec dx
	dec bx
	jnz raizEsq
	
	;botao close
	mov ah, 0ch
	mov al, 4
	mov cx, 295
	mov dx,15
	int 10h
	
	mov bx, 10
	fecharCima:     ;desenha a linha de cima do botao para fechar a aplicacao 
	int 10h
	inc cx
	dec bx
	jnz fecharCima
	
	mov bx, 10
	fecharDir:      ;desenha a linha da direita do botao para fechar a aplicacao 
	int 10h
	inc dx
	dec bx
	jnz fecharDir
	
	mov bx, 10
	fecharBaixo:    ;desenha a linha de baixo do botao para fechar a aplicacao
	int 10h
	dec cx
	dec bx
	jnz fecharBaixo
	
	mov bx, 10
	fecharEsq:      ;desenha a linha da esquerda do botao para fechar a aplicacao
	int 10h
	dec dx
	dec bx
	jnz fecharEsq
	
	;botao guardar
	mov ah, 0ch
	mov al, 9
	mov cx, 215
	mov dx,100
	int 10h
	
	mov bx, 75
	guardarCima:    ;desenha a linha de cima do botao Guardar (num ficheiro)
	int 10h
	inc cx
	dec bx
	jnz guardarCima
	
	mov bx, 30
	guardarDir:     ;desenha a linha da direita do botao Guardar
	int 10h
	inc dx
	dec bx
	jnz guardarDir
	
	mov bx, 75
	guardarBaixo:   ;desenha a linha de baixo do botao Guardar
	int 10h
	dec cx
	dec bx
	jnz guardarBaixo
	
	mov bx, 30
	guardarEsq:     ;desenha a linha da esquerda do botao Guardar
	int 10h
	dec dx
	dec bx
	jnz guardarEsq
	
	;botao ler
	mov ah, 0ch
	mov al, 9
	mov cx, 215
	mov dx,140
	int 10h
	
	mov bx, 75
	lerCima:        ;desenha a linha da cima do botao Ler  (de um ficehiro)
	int 10h
	inc cx
	dec bx
	jnz lerCima
	
	mov bx, 30
	lerDir:         ;desenha a linha da direita do botao Ler
	int 10h
	inc dx
	dec bx
	jnz lerDir
	
	mov bx, 75
	lerBaixo:       ;desenha a linha de baixo do botao Ler
	int 10h
	dec cx
	dec bx
	jnz lerBaixo
	
	mov bx, 30      ;desenha a linha da esquerda do botao Ler
	lerEsq:
	int 10h
	dec dx
	dec bx
	jnz lerEsq
	
numpad:
    ;primeiro botão numerico
    mov ah, 0ch
	mov al, 9
	mov cx, 30
	mov dx,90
	int 10h
	
	mov bx, 30
	bot0Cima:       ;desenha a linha de cima do botao 0
	int 10h
	inc cx
	dec bx
	jnz bot0Cima
	
	mov bx, 20
	bot0Dir:        ;desenha a linha da direita do botao 0
	int 10h
	inc dx
	dec bx
	jnz bot0Dir
	
	mov bx, 30
	bot0Baixo:      ;desenha a linha de baixo do botao 0
	int 10h
	dec cx
	dec bx
	jnz bot0Baixo
	
	mov bx, 20
	bot0Esq:        ;desenha a linha da esquerda do botao 0
	int 10h
	dec dx
	dec bx
	jnz bot0Esq
	
	;segundo botao numerico
	mov ah, 0ch
	mov al, 9
	mov cx, 30
	mov dx,120
	int 10h
	
	mov bx, 30
	bot1Cima:      ;desenha a linha de cima do botao 1
	int 10h
	inc cx
	dec bx
	jnz bot1Cima
	
	mov bx, 20
	bot1Dir:       ;desenha a linha da direita do botao 1
	int 10h
	inc dx
	dec bx
	jnz bot1Dir
	
	mov bx, 30
	bot1Baixo:     ;desenha a linha de baixo do botao 1
	int 10h
	dec cx
	dec bx
	jnz bot1Baixo
	
	mov bx, 20
	bot1Esq:       ;desenha a linha da esquerda do botao 1
	int 10h
	dec dx
	dec bx
	jnz bot1Esq
	
	;terceiro botao numerico
	mov ah, 0ch
	mov al, 9
	mov cx, 30
	mov dx,150
	int 10h
	
	mov bx, 30     ;desenha a linha de cima do botao 2
	bot2Cima:
	int 10h
	inc cx
	dec bx
	jnz bot2Cima
	
	mov bx, 20
	bot2Dir:       ;desenha a linha direita do botao 2
	int 10h
	inc dx
	dec bx
	jnz bot2Dir
	
	mov bx, 30
	bot2Baixo:     ;desenha a linha de baixo do botao 2
	int 10h
	dec cx
	dec bx
	jnz bot2Baixo
	
	mov bx, 20
	bot2Esq:        ;desenha a linha esquerda do botao 2
	int 10h
	dec dx
	dec bx
	jnz bot2Esq
	
	;quarto botao numerico
	mov ah, 0ch
	mov al, 9
	mov cx, 70
	mov dx,90
	int 10h
	
	mov bx, 30
	bot3Cima:      ;desenha a linha de cima do botao 3
	int 10h
	inc cx
	dec bx
	jnz bot3Cima
	
	mov bx, 20
	bot3Dir:       ;desenha a linha direita do botao 3
	int 10h
	inc dx
	dec bx
	jnz bot3Dir
	
	mov bx, 30     ;desenha a linha de baixo do botao 3
	bot3Baixo:
	int 10h
	dec cx
	dec bx
	jnz bot3Baixo
	
	mov bx, 20
	bot3Esq:       ;desenha a linha esquera do botao 3
	int 10h
	dec dx
	dec bx
	jnz bot3Esq
	
	;quinto botao numerico
	mov ah, 0ch
	mov al, 9
	mov cx, 70
	mov dx,120
	int 10h
	
	mov bx, 30
	bot4Cima:      ;desenha a linha de cima do botao 4
	int 10h
	inc cx
	dec bx
	jnz bot4Cima
	
	mov bx, 20
	bot4Dir:       ;desenha a linha direita do botao 4
	int 10h
	inc dx
	dec bx
	jnz bot4Dir
	
	mov bx, 30
	bot4Baixo:     ;desenha a linha de baixo do botao 4
	int 10h
	dec cx
	dec bx
	jnz bot4Baixo
	
	mov bx, 20     ;desenha a linha da esquerda do botao 4
	bot4Esq:
	int 10h
	dec dx
	dec bx
	jnz bot4Esq
	
	;sexto botao numerico
	mov ah, 0ch
	mov al, 9
	mov cx, 70
	mov dx,150
	int 10h
	
	mov bx, 30
	bot5Cima:       ;desenha a linha de cima do botao 5
	int 10h
	inc cx
	dec bx
	jnz bot5Cima
	
	mov bx, 20
	bot5Dir:        ;desenha a linha direita do botao 5
	int 10h
	inc dx
	dec bx
	jnz bot5Dir
	
	mov bx, 30
	bot5Baixo:      ;desenha a linha de baixo do botao 5
	int 10h
	dec cx
	dec bx
	jnz bot5Baixo
	
	mov bx, 20
	bot5Esq:        ;desenha a linha da esquerda do botao 5
	int 10h
	dec dx
	dec bx
	jnz bot5Esq
	
	;setimo botao numerico
	mov ah, 0ch
	mov al, 9
	mov cx, 110
	mov dx,90
	int 10h
	
	mov bx, 30
	bot6Cima:       ;desenha a linha de cima do botao 6
	int 10h
	inc cx
	dec bx
	jnz bot6Cima
	
	mov bx, 20
	bot6Dir:        ;desenha a linha da direita do botao 6
	int 10h
	inc dx
	dec bx
	jnz bot6Dir
	
	mov bx, 30
	bot6Baixo:      ;desenha a linha de baixo do botao 6
	int 10h
	dec cx
	dec bx
	jnz bot6Baixo
	
	mov bx, 20
	bot6Esq:        ;desenha a linha da esquerda do botao 6
	int 10h
	dec dx
	dec bx
	jnz bot6Esq
	
	;oitavo botao numerico
	mov ah, 0ch
	mov al, 9
	mov cx, 110
	mov dx,120
	int 10h
	
	mov bx, 30      ;desenha a linha de cima do botao 7
	bot7Cima:
	int 10h
	inc cx
	dec bx
	jnz bot7Cima
	
	mov bx, 20
	bot7Dir:        ;desenha a linha da direita do botao 7
	int 10h
	inc dx
	dec bx
	jnz bot7Dir
	
	mov bx, 30
	bot7Baixo:      ;desenha a linha de baixo do botao 7
	int 10h
	dec cx
	dec bx
	jnz bot7Baixo   
	
	mov bx, 20
	bot7Esq:        ;desenha a linha da esquerda do botao 7
	int 10h
	dec dx
	dec bx
	jnz bot7Esq
	
	;nono botao numerico
	mov ah, 0ch
	mov al, 9
	mov cx, 110
	mov dx,150
	int 10h
	
	mov bx, 30
	bot8Cima:       ;desenha a linha de cima do botao 8
	int 10h
	inc cx
	dec bx
	jnz bot8Cima
	
	mov bx, 20
	bot8Dir:        ;desenha a linha da direita do botao 8
	int 10h
	inc dx
	dec bx
	jnz bot8Dir
	
	mov bx, 30
	bot8Baixo:      ;desenha a linha de baixo do botao 8
	int 10h
	dec cx
	dec bx
	jnz bot8Baixo
	
	mov bx, 20
	bot8Esq:        ;desenha a linha da esquerda do botao 8
	int 10h
	dec dx
	dec bx
	jnz bot8Esq
	
	;decimo botao numerico
	mov ah, 0ch
	mov al, 9
	mov cx, 150
	mov dx,90
	int 10h
	
	mov bx, 30
	bot9Cima:       ;desenha a linha de cima do botao 9
	int 10h
	inc cx
	dec bx
	jnz bot9Cima
	
	mov bx, 20
	bot9Dir:        ;desenha a linha da direita do botao 9
	int 10h
	inc dx
	dec bx
	jnz bot9Dir
	
	mov bx, 30
	bot9Baixo:      ;desenha a linha de baixo do botao 9
	int 10h
	dec cx
	dec bx
	jnz bot9Baixo
	
	mov bx, 20
	bot9Esq:        ;desenha a linha da esquerda do botao 9
	int 10h
	dec dx
	dec bx
	jnz bot9Esq
	
	;botao apagar
	mov ah, 0ch
	mov al, 9
	mov cx, 150
	mov dx,120
	int 10h
	
	mov bx, 30
	botmCima:       ;desenha a linha de cima do botao apagar
	int 10h
	inc cx
	dec bx
	jnz botmCima
	
	mov bx, 20
	botmDir:        ;desenha a linha da direita do botao apagar
	int 10h
	inc dx
	dec bx
	jnz botmDir
	
	mov bx, 30
	botmBaixo:      ;desenha a linha de baixo do botao apagar
	int 10h
	dec cx
	dec bx
	jnz botmBaixo
	
	mov bx, 20
	botmEsq:        ;desenha a linha da esquerda do botao apagar
	int 10h
	dec dx
	dec bx
	jnz botmEsq
	
	;botao enter
	mov ah, 0ch
	mov al, 9
	mov cx, 150
	mov dx,150
	int 10h
	
	mov bx, 30
	botcCima:       ;desenha a linha de cima do botao Enter
	int 10h
	inc cx
	dec bx
	jnz botcCima
	
	mov bx, 20
	botcDir:        ;desenha a linha da direita do botao Enter
	int 10h
	inc dx
	dec bx
	jnz botcDir
	
	mov bx, 30
	botcBaixo:      ;desenha a linha de baixo do botao Enter
	int 10h
	dec cx
	dec bx
	jnz botcBaixo
	
	mov bx, 20
	botcEsq:        ;desenha a linha da esquerda do botao Enter
	int 10h
	dec dx
	dec bx
	jnz botcEsq
	           
rato:
    mov ax, 1
    int 33h

posicao:    
    ;receber posicao do rato (x = cx, y = dx)
    mov ax, 3
    int 33h  
    
    cmp bx, 0     ;compara a posicao
    je posicao    ;se for igual retorna a posicao
    
close:
    cmp cx, 490
    jl posicao
    cmp cx, 610 
    jg posicao
    cmp dx, 15
    jl posicao
    cmp dx, 25
    jg posicao
    
    mov ah, 0
    int 21h 
    
end   
    

    