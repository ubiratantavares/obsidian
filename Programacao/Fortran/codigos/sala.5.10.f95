!
! Questão 10 da Lista 05 de exercícios para sala de aula - Capítulo F90/3
!
program mmc
    implicit none
    integer :: val1, val2, dividendo, divisor, aux
    
    write(*, *) "Calcula o MMC (Mínimo Múltiplo Comum)"
    write(*, *) "de dois números inteiros positivos:"
    write(*, *)
    write(*, *) "Informe os valores dos dois inteiros positivos:"
    read(*, *) val1, val2
    if(val1 < val2) then
        aux = val1
        val1 = val2
        val2 = aux
    end if
    dividendo = val1
    divisor = val2
    do while (mod(dividendo, divisor) /= 0)
        dividendo = dividendo + val1
    end do
    write(*, *) "O MMC de", val1, "      e", val2,  "      eh igual a", dividendo
    stop
end program mmc

