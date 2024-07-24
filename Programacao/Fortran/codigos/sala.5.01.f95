!
! Questão 01 da Lista 05 de exercícios para sala de aula - Capítulo F90/3
!
program varios_cilindros
    implicit none
    real :: raio, altura, volume, pi = 3.14159
    
    write(*, *) "Mostra o volume de vários cilindros a partir de seus raios e alturas."
    write(*, *) "Pára quando encontra um raio ou altura igual a zero:"
    write(*, *)
    write(*, *) "Informe o raio do cilindro:"
    read(*, *) raio
    write(*, *) "Informe a altura do cilindro:"
    read(*, *) altura
    do while (raio /= 0 .and. altura /= 0)
        volume = pi * raio**2 * altura
        write(*, *) "Volume do cilindro =", volume
        write(*, *)
        write(*, *) "Informe o raio do cilindro:"
        read(*, *) raio
        write(*, *) "Informe a altura do cilindro:"
        read(*, *) altura
    end do
    stop
end program varios_cilindros
