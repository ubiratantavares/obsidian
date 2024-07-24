!
! Questão 12 da Lista de exercícios para sala de aula - Capítulo F90/2
!
program avalia_peso
    implicit none
    real :: peso, altura, x, y, novo_menor_peso, novo_maior_peso, imc
    
    write(*, *) "Calculo do IMC e dos percentuais de emagrecimento e engorda:"
    write(*, *) 
    write(*, *) "Informe o peso e a altura da pessoa:"
    read(*, *) peso, altura
    write(*, *) "Informe o o percentual X de engorda:"
    read(*, *) x
    write(*, *) "Informe o percentual Y de emagrecimento:"
    read(*, *) y
    novo_maior_peso = peso + peso * x / 100
    novo_menor_peso = peso - peso * y / 100
    imc = peso / altura**2
    write(*, *)
    write(*, *) "Novo peso se a pessoa engordar", x, "% = ", novo_maior_peso
    write(*, *) "Novo peso se a pessoa emagrecer", y, "% = ", novo_menor_peso
    write(*, *) "IMC =", imc
    stop
end program avalia_peso