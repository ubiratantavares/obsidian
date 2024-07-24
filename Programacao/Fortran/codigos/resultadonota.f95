! Exemplo de programa usando o comando IF em sua forma expandida
     program resultadonota
     implicit none 			! todas as variaveis devem ser declaradas explcitamente
     real nota				! declara a variavel nota como real
     print *, 'Qual foi a nota da sua prova? ' ! escreve na tela a nota
     read *, nota			! lê a nota
     if (nota .ge. 9.0) then 
       print *, 'muito bem!'
     else if (nota .ge. 7.0) then
       	print *, 'voce foi bem!'
     else if (nota .ge. 5.0) then
       	print *, 'voce tem que melhorar um pouco!'
     else
        print *, 'Farelo!!!'
     end if
     stop
     end
       