program projeto0020
 	integer :: n, positivos, negativos, nulos, i
    real :: numero
	print *, "Quantos numeros serao digitados?: "
    read *, n
    positivos = 0
    negativos = 0
    nulos = 0
    do i = 1, n
      print *, "Entre com o numero: "
      read *, numero
      if (numero > 0.) then
        positivos = positivos + 1
      else if (numero < 0.) then
        negativos = negativos + 1
      else 
        nulos = nulos + 1
      end if
    end do	
	print *
    print *, "Quantidade de numeros positivos: ", positivos
    print *, "Quantidade de numeros negativos: ", negativos
    print *, "Quantidade de numeros nulos: ", nulos
end program projeto0020