	 program soma		 		! Inicia o programa chamado soma
     integer k, n, m 			! Declara que as variaveis k, n e m são variaveis inteiras
     n = 1						! Atribui o valor 1 a variavel n
     m = 3						! Atribui o valor 3 a variavel m
     if (m .ne. 0) then
       k = m + n				! soma n e m e o resultado armazenado em k
     endif
     print*, k					! Escreve na tela a variavel k
     stop						! Para a execução do programa
     end						! Fim do programa soma
    