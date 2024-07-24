! Programa 3.3 - Exemplo de estrutura por multiplas decisoes
program raizes
	implicit none
    real :: a, b, c, delta
    write(*,*) 'Digite os coeficientes da equacao do 2 grau: '
    read(*,*) a, b, c

	delta = (b**2 - 4.0 * a * c)
    
    if (delta < 0.0) then
      write(*,*) 'Raizes complexas'
      stop
    else if (delta == 0.0) then
      write(*,*) 'A solucao tera 2 raizes reais e iguais'
    else
      write(*,*) 'A solucao tera 2 raizes reais e distintas'
    end if

end program raizes