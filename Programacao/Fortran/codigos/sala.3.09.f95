!
! Questão 09 da Lista 03 de exercícios para sala de aula - Capítulo F90/3
!
program abastecimento
    implicit none
    real :: distancia, consumo, combustivel, falta
    
    write(*, *) "Mostra se o combustivel de um veiculo e suficiente para cobrir uma determinada distancia."
    write(*, *) "Caso nao seja, informa a quantidade de combustivel necessaria:"
    write(*, *)
    write(*, *) "Informe a distancia a ser percorrida (km):"
    read(*, *) distancia
    write(*, *) "Informe o consumo do veiculo (km/l):"
    read(*, *) consumo
    write(*, *) "Informe a a quantidade de combustível que o veiculo possui (l):"
    read(*, *) combustivel
    write(*, *)
    if (distancia / consumo > combustivel) then
        falta = distancia / consumo - combustivel
        write(*, *) "O veiculo precisara ser abastecido com", falta, " litros de combustivel!"
    else
        write(*, *) "O veiculo possui combustivel suficiente para cobrir a distancia!"
    end if
    stop
end program abastecimento
