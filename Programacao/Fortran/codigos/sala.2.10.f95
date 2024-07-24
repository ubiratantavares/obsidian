!
! Questão 10 da Lista de exercícios para sala de aula - Capítulo F90/2
!
program cilindro
    implicit none
    real :: raio, altura, area_base, area_lateral, area_superficie, pi = 3.14159
    
    write(*, *) "Calculo da area da base, area da superficie lateral e area da superficie total de um cilindro:"
    write(*, *) 
    write(*, *) "Informe o valor do raio da base e da altura do cilindro:"
    read(*, *) raio, altura
    area_base = pi * raio**2
    area_lateral = 2 * pi * raio * altura
    area_superficie = 2 * area_base + area_lateral
    write(*, *)
    write(*, *) "Area da base do cilindro =", area_base
    write(*, *) "Area da superficie lateral do cilindro =", area_lateral
    write(*, *) "Area da superficie total do cilindro =", area_superficie
    stop
end program cilindro