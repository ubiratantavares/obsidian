!
! Quest�o 05 da Lista 05 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program media_maior_500
    implicit none
    real :: valor, soma = 0, media
    integer :: conta_valores
    
    write(*, *) "L� v�rios valores reais e para quando a sua m�dia aritm�tica for maior que 500:"
    write(*, *)
    write(*, *) "Informe um valor real:"
    read(*, *) valor
    soma = soma + valor
    conta_valores = 1
    media = soma / conta_valores
    do while (media <= 500)
        write(*, *) "Informe um valor inteiro:"
        read(*, *) valor
        soma = soma + valor
        conta_valores = conta_valores + 1
        media = soma / conta_valores
    end do
    write(*, *)
    write(*, *) "A media calculada foi:", media
    stop
end program media_maior_500

