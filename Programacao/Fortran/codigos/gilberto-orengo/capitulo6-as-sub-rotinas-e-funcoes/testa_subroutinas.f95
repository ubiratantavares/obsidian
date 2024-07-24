program testa_subroutinas
	implicit none
    
    real :: a, b, c, x
    
    write(*,*) 'Digite o valor do cateto b do triangulo retangulo: '
    read(*,*) b
    
    write(*,*) 'Digite o valor do cateto c do triangulo retangulo: '
    read(*,*) c

    call calcular_hipotenusa(b, c, a)
    
    write(*,50) 'O valor da hipotenusa do triangulo retangulo: ', a
    50 format(a, f10.2)

    write(*,*) ''

	write(*,*) 'Entre com os coeficientes da funcao quadratica'
    write(*,*) 'Digite o coeficiente a:'
    read(*,*) a
    
    write(*,*) 'Digite o coeficiente b:'
    read(*,*) b

    write(*,*) 'Digite o coeficiente c:'
    read(*,*) c

    write(*,*) 'Digite o valor da variavel x: '
    read(*,*) x

    write(*, 100) 'Valor da funcao quadratica em no ponto x = ', x, ' = ', funcao_2grau(x, a, b, c)
  	100 format(a, f10.2, a, f12.2)
 
	contains 
   	subroutine calcular_hipotenusa(cateto1, cateto2, hipotenusa)
		implicit none
    	real, intent(in) :: cateto1
    	real, intent(in) :: cateto2
    	real, intent(out) :: hipotenusa

    	real :: temp

    	temp = cateto1**2 + cateto2**2
   		hipotenusa = sqrt(temp)
	end subroutine calcular_hipotenusa

    real function funcao_2grau(x, a, b, c)
    	implicit none
        real, intent(in) :: x, a, b, c

        funcao_2grau = a*x**2 + b*x + c
    end function funcao_2grau

end program testa_subroutinas





