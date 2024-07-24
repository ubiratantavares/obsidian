! Programa 3.6 - Exemplo de estrutura de repeticao
program numeros_pares
	implicit none
    integer :: i, j

    j = 0

    do i = 1, 1000
		write(*,*) 'Contador: ', i
        if (mod(i,2) == 0) then
			write(*,*) 'Eh um numero par: ', i
            j = j + 1
            if (j == 100) exit
        end if
    end do

end program numeros_pares