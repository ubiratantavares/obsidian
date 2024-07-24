program parte_de_char
	character(len=20) :: total
    character(len=3) :: parte

    write(*,*) 'Digite uma palavra, com ate 20 posicoes: '
    read(*,*) total
    
    parte = total(3:5)

    write(*,*) 'A parte da palavra digitada eh: ', parte
    
end program parte_de_char
