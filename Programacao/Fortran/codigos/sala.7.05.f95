!
! Questão 05 da Lista 07 de exercícios para sala de aula - Capítulo F90/5
!
program decimal_para_binario
    implicit none
    integer :: num_dec, dec_para_bin

    write(*, *) "Utiliza uma função que converte um número inteiro positivo da base decimal"
    write(*, *) "para binária. O programa lê o número decimal e apresenta o binário"
    write(*, *)
    write(*, *) "Informe um numero decimal inteiro:"
    read(*, *) num_dec
    write(*, *)
    write(*, *) "O numero lido em binario e", dec_para_bin(num_dec)
    stop
end program decimal_para_binario

function dec_para_bin(dec)
    implicit none
    integer :: dec, dividendo, quociente, expoente_de_10, dec_para_bin
    
    dividendo = dec
    quociente = dividendo / 2
    expoente_de_10 = 0
    dec_para_bin = 0
    DO WHILE (quociente /= 0)
        dec_para_bin = dec_para_bin + 10**expoente_de_10 * MOD(dividendo, 2)
        dividendo = quociente
        quociente = dividendo / 2
        expoente_de_10 = expoente_de_10 + 1
    END DO
    dec_para_bin = dec_para_bin + 10**expoente_de_10 * MOD(dividendo, 2)
    return
end function dec_para_bin
