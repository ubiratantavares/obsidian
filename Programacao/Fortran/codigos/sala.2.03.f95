!
! Quest�o 03 da Lista de exerc�cios para sala de aula - Cap�tulo F90/2
!
program ponderada
    implicit none
    real :: n1, n2, n3, p1, p2, p3, media_ponderada
    
    write(*, *) "Encontrar a m�dia ponderada de tres notas:"
    write(*, *)
    write(*, *) "Informe as tres notas do aluno:"
    read(*, *) n1, n2, n3
    write(*, *) "Informe os respectivos pesos das tres notas:"
    read(*, *) p1, p2, p3
    write(*, *)
    media_ponderada = (n1 * p1 + n2 * p2 + n3 * p3) / (p1 + p2 + p3)
    write(*, *) "Media Ponderada =", media_ponderada
    stop
end program ponderada
