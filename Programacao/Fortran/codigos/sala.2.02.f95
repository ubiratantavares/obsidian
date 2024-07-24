!
! Questão 02 da Lista de exercícios para sala de aula - Capítulo F90/2
!
program calcula_resto
    implicit none
    integer :: dividendo, divisor, resto
    
    write(*, *) "Calculo do resto da divisão de dois numeros inteiros:"
    write(*, *)
    write(*, *) "Informe os valores do dividendo e do divisor:"
    read(*, *) dividendo, divisor
    resto = dividendo - divisor * (dividendo / divisor)
    write(*, *) "Resto =", resto
    stop
end program calcula_resto
