!
! Quest�o 01 da Lista 04 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program imc_5
    implicit none
    integer :: pessoa
    real :: peso, altura, imc
    
    write(*, *) "Calcula o IMC de 5 pessoas:"
    write(*, *)
    do pessoa = 1, 5, 1
        write(*, *)
        write(*, *) "Informe o peso da pessoa:"
        read(*, *) peso
        write(*, *) "Informe a altura da pessoa:"
        read(*, *) altura
        imc = peso / altura**2
        write(*, *) "O IMC desta pessoa � igual a", imc
    end do
    stop
end program imc_5
