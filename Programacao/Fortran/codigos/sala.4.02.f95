!
! Quest�o 02 da Lista 04 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program imc_n
    implicit none
    integer :: pessoa, n
    real :: peso, altura, imc
    
    write(*, *) "Calcula o IMC de N pessoas:"
    write(*, *)
    write(*, *) "Para quantas pessoas ser� calculado o IMC?"
    read(*, *) n
    do pessoa = 1, n, 1
        write(*, *)
        write(*, *) "Informe o peso da pessoa:"
        read(*, *) peso
        write(*, *) "Informe a altura da pessoa:"
        read(*, *) altura
        imc = peso / altura**2
        write(*, *) "O IMC desta pessoa � igual a", imc
    end do
    stop
end program imc_n
