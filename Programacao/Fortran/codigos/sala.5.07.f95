!
! Quest�o 07 da Lista 05 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program celsius_para_farenheit
    implicit none
    real :: celsius, farenheit
    
    write(*, *) "Converte v�rias temperaturas de graus Celsius para graus Farenheit."
    write(*, *) "O programa p�ra quando encontrar uma temperatura em graus Farenheit maior que 100."
    write(*, *)
    write(*, *) "Informe uma temperatura em Celsius:"
    read(*, *) celsius
    farenheit = 9. / 5 * celsius + 32
    write(*, *) "Temperatura em Farenheit =", farenheit
        do while (farenheit <= 100)
        write(*, *)
        write(*, *) "Informe uma temperatura em Celsius:"
        read(*, *) celsius
        farenheit = 9. / 5 * celsius + 32
        write(*, *) "Temperatura em Farenheit =", farenheit
    end do
    stop
end program celsius_para_farenheit

