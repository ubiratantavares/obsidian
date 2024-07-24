! Programa 2.1 - Exemplo de saida de dados
program saida
	implicit none
	integer :: a = 10, b = 20, c = 135
	
	write(*, *) a
    open(unit= 10, file="saida.txt")
    write(10, *) b
    write(10, 200) c
200 format(i3)
	close(10)
end program saida
