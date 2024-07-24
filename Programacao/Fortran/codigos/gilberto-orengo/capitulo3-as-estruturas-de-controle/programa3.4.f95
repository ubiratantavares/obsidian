! Programa 3.4 - Exemplo de decisao logica em uma linha
program if_logico
	implicit none
    integer :: a
    write(*,*) 'Digite um numero inteiro: '
    read(*,*) a

    if (a >= 10) a = a + 25

    write(*,*) 'O resultado final eh: ', a
    
end program if_logico