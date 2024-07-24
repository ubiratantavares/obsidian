!
! Questão 12 da Lista de exercícios 03 para sala de aula - Capítulo F90/3
!
program ordinal
    implicit none
    integer :: numero, dezena, unidade
    
    write(*, *) "Conversao de um binario de nove digitos para decimal:"
    write(*, *)
    write(*, *)  "Digite um número inteiro binario de nove digitos:"
    read(*, *) numero
    dezena = numero / 10
    unidade = numero - dezena * 10
    write(*, *)
    if (dezena == 1) then
      write (*, *) "Demo"
    else if (dezena == 2) then
      write (*, *) "Vigesimo"
    else if (dezena == 3) then
      write (*, *) "Trigesimo"
    else if (dezena == 4) then
      write (*, *) "Quadragesimo"
    else if (dezena == 5) then
      write (*, *) "Quincagesimo"
    else if (dezena == 6) then
      write (*, *) "Sexagesimo"
    else if (dezena == 7) then
      write (*, *) "Septuagesimo"
    else if (dezena == 8) then
      write (*, *) "Octagesimo"
    else if (dezena == 9) then
      write (*, *) "Nonagesimo"
    endif
    if (unidade == 1) then
      write (*, *) "Primeiro"
    else if (unidade == 2) then
      write (*, *) "Segundo"
    else if (unidade == 3) then
      write (*, *) "Terceiro"
    else if (unidade == 4) then
      write (*, *) "Quarto"
    else if (unidade == 5) then
      write (*, *) "Quinto"
    else if (unidade == 6) then
      write (*, *) "Sexto"
    else if (unidade == 7) then
      write (*, *) "Setimo"
    else if (unidade == 8) then
      write (*, *) "Oitavo"
    else if (unidade == 9) then
      write (*, *) "Nono"
    endif
    stop
end program ordinal
