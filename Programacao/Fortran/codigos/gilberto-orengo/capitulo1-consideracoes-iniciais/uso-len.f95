program uso_len
	implicit none
    character(len=6) :: nome
    integer :: a

    nome = 'fisica'
    a = len(nome)
    write(*,*) 'Tamanho da palavra = ', a
end program uso_len
