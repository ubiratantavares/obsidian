! este programa faz contagem regressiva a partir de um numero fornecido
     program contagem
     implicit none
     integer interv, tempo, inicio
     parameter (interv = -1)
     print *, 'entre com um numero inteiro'
     read *, inicio
     print *, 'comecou a contagem regressiva '
     do 10 tempo=inicio, 1, interv
       	print *, tempo
     10 continue
     print *, 'bummmm!!'
     stop
     end
     