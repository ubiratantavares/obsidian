! este programa calcula a media e o desvio padrao de uma
! serie de dados fornecidos a partir do teclado
     program conjloop
     integer maxitem
     parameter (maxitem = 8)
     integer i
     real x(maxitem), averag, stdev, sum, sumsqr
     print*, 'entre', maxitem, ' numeros, um por linha: '
     do 10 i=1, maxitem
         read *, x(i)
  10 continue
     sum = 0.0
     sumsqr = 0.0
     do 20 i=1, maxitem
       sum = sum + x(i)
       sumsqr = sumsqr + x(i)**2
  20 continue
     averag = sum/real(maxitem)
     stdev = sqrt(sumsqr/real(maxitem) - averag**2)
     print *
     print 15, 'O valor medio e', averag
     print 15, 'O desvio padrao e', stdev
  15 format (1x, a, f8.1)
     print *
     print *, 'tabela de diferenca entre x(i) e a media'
     print 25, 'i', 'x(i)', 'diferenca'
  25 format (1x, a4, 3x, a8, 3x, a14)
     do 30 i=1, maxitem
       print 35, i, x(i), x(i)-averag
  35 format (1x, i4, 3x, f8.1, 3x, f14.1)
  30 continue
     stop
     end   