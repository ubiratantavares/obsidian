! Programa 2.2 - Exemplo de entrada de dados

program leitura
	
	implicit none
    real :: a, b, c

    write(*,60,advance="NO") "Digite um numero real: "    
    read(*, *) a
    
    open(unit=20, file="dados.txt")
    
    read(20, *) b
    read(20, 50) c
    
50  format(F8.2)
60 	format(A)

	write(*,50) a
    write(*,50) b
    write(*,50) c
    
	close(20)
    
end program leitura
