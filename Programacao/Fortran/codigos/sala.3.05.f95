!
! Quest�o 05 da Lista 03 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program alistamento
    implicit none
    character (len = 1) :: sexo
    integer :: idade
    
    write(*, *) "Informa se o individuo de alistar-se no servi�o militar:"
    write(*, *)
    write(*, *) "Informe o sexo (M ou F) e a idade do individuo:"
    read(*, *) sexo, idade
    if ((sexo == "M" .or. sexo == "m") .and. idade == 17) then
        write(*, *) "Deve alistar-se no servico militar!"
    end if
    stop
end program alistamento
