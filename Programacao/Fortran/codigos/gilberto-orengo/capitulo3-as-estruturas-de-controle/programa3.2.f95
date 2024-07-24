! Programa 3.2 - Exemplo de estrutura por decisao simples
program no_impar
	implicit none
    integer :: a

    write(*, 60, advance="no") 'Digite um numero inteiro: '
    read(*,*) a
60  format(a)
    if (mod(a,2) == 1) then
      write(*,*) 'O numero digitado eh impar'
    end if

end program no_impar