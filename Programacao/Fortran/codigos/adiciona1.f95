! Somar os numeros inteiros de 1 a 100
     program p_add100
     ia = 0						! inicializa um acumulador
     do 10 ic=1, 100, 1		! 
       		ia = ia + ic
     10 continue            ! enquanto ic < 100, o comando do é executado 
     write (*,*) ia
     stop
     end
     