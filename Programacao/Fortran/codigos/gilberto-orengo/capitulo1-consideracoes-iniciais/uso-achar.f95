program uso_achar
	character :: letras
    integer :: posicao
    write(*,*) 'Digite um inteiro para obter o caracter ASCII: '
    write(*,*) '(Nao esqueca que eh um valor entre 0 e 256)'
    read(*,*) posicao
    letras = achar(posicao)
    write(*,*) 'O caracter eh: ', letras
end program uso_achar
