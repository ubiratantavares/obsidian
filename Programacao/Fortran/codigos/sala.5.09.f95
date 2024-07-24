!
! Questão 09 da Lista 05 de exercícios para sala de aula - Capítulo F90/3
!
program mdc
    implicit none
    integer :: val1, val2, dividendo, divisor, resto
    
    write(*, *) "Calcula o MDC (Máximo Divisor Comum)"
    write(*, *) "de dois números inteiros positivos:"
    write(*, *)
    write(*, *) "Informe os valores dos dois inteiros positivos:"
    read(*, *) val1, val2
    dividendo = val1
    divisor = val2
    resto = mod(dividendo, divisor)
    do while (resto /= 0)
        dividendo = divisor
        divisor = resto
        resto = mod(dividendo, divisor)
    end do
    write(*, *) "O MDC de", val1, "      e", val2,  "      eh igual a", divisor
    stop
end program mdc

