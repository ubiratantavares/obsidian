!este programa le um valor inteiro via dispositivo padrao, multiplica-o po dez e escreva o resultado 
!em um arquivo com nome saida1.txt

program open1
	implicit none
    integer :: a, b
    open(unit=50, file="saida1.txt")
    write(*,*) "Digite um numero inteiro"
    read(*,*) a
    b = 10 * a
    write(50,*) b
    close(50)
end program open1