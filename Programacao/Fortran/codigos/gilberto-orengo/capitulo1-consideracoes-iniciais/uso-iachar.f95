program uso_iachar
	character :: letra
    integer :: posicao
    write(*,*) 'Digite um caracter da tabela ASCII: '
    read(*, '(A)') letra
    posicao = iachar(letra)
    write(*,*) 'A posicao na tabela ASCII eh: ', posicao
end program uso_iachar
