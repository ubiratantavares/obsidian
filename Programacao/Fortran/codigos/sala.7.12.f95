!
! Quest�o 12 da Lista 07 de exerc�cios para sala de aula - Cap�tulo F90/5
!
program apresenta_data
    implicit none
    integer :: data, dia, mes, ano

    write(*, *) "Receber uma data como um �nico inteiro (ddmmaaaa) e apresentar"
    write(*, *) "a data na forma: dd/mm/aaaa, usando uma sub-rotina que recebe"
    write(*, *) "a data num �nico valor e devolve em vari�veis separadas: dia mes e ano."
    write(*, *)
    write(*, *) "Informe a data no formato DDMMAAAA:"
    read(*, *) data
    call separa_data(data, dia, mes, ano)
    write(*, *) "Data formatada =", dia, "          /", mes, "          /", ano
    stop
end program apresenta_data

subroutine separa_data(ddmmaaaa, dd, mm, aaaa)
    integer :: ddmmaaaa, dd, mm, aaaa, mmaaaa

    dd = ddmmaaaa / 1000000
    mmaaaa = mod(ddmmaaaa, 1000000)
    mm = mmaaaa / 10000
    aaaa = mod(mmaaaa, 10000)
    return
end subroutine separa_data

