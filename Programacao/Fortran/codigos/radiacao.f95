! Programa que mostra um exemplo de formatacao usando o comando format
! Este programa calcula o grau de contaminação de uma certa
! area e o tempo necessario para que esta que com um grau
! de segurança

     program radiacao
     real radseg, fatseg
     parameter (radseg = 0.466, fatseg=10.0)
     integer dia
     real nivrad, radmin
     dia = 0
     print *, 'Entre com o nivel de radiacao do dia '
     read *, nivrad
     print 15, 'n.dias', 'radiacao', 'condicao'
  15 format (1x, a7, 2x, a11, 2x, a8)
     radmin = radseg/fatseg
     do while (nivrad .gt. radmin)
       if (nivrad .gt. radseg) then
         print 25, dia, nivrad, 'inseguro'
  25     format (1x, i7, 2x, f11.7, 2x, a8)       
       else 
         print 35, dia, nivrad, 'seguro'
  35     format (1x, i7, 2x, f11.7, 2x, a8)       
       end if
       dia = dia + 3
       nivrad = nivrad/2.0
     end do
     stop
     end
     