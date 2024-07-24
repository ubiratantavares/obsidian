program uso_funcoes
	implicit none

	real :: pi, alfa, theta, f, fx, modulo

	pi = 3.14159265	
	write(*, *) 'Digite o valor do angulo (em graus): '
	read(*, *) alfa

	! Converte graus em radianos
	theta = (alfa * pi) / 180.0

	write(*,*) 'Digite o valor da Forca (em Newtons): '
	read(*,*) f
	fx = f * cos(theta)

	modulo = abs(fx)

	write(*,*) 'A forca no eixo x, em modulo, equivale: ', modulo
    
end program uso_funcoes
