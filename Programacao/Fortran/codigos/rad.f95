! Este programa calcula o nivel de radia�ao e o grau de seguran�a
! o programa utiliza o comando do while, que � utilizado para
! executar um bloco repetidas vezes enquanto a condi��o for
! verdadeira. A partir do momento em que a condi�ao passa a ser
! falsa, este sai do loop continuando a execu��o do restante do programa
     program radiacao
     implicit none
     real radseg, fatseg, nivrad, radmin
     parameter (radseg = 0.466, fatseg=10.0)
     integer dia
     dia = 0
     print *, 'Entre com o nivel de radiacao do dia '
     read *, nivrad
     print *, '       n.dias     radiacao '
     radmin = radseg/fatseg
     do while (nivrad .gt. radmin)
       if (nivrad .gt. radseg) then
         print *, dia, nivrad, ' inseguro'
       else 
         print *, dia, nivrad, '  seguro'
       end if
       dia = dia + 3
       nivrad = nivrad/2.0
     end do
     stop
     end
     