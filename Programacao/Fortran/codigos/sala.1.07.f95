!
! Quest�o 07 da Lista de exerc�cios para sala de aula - Cap�tulo F90/1
!
program ponderada
    write(*, *) "Encontrar a m�dia ponderada das notas: 9.5, 8.7 e 9.3."
    write(*, *) "Os pesos da notas s�o respectivamente: 3, 2 e 5:"
    write(*, *)
    write(*, *) "Media Ponderada =", (9.5 * 3 + 8.7 * 2 + 9.3 * 5) / (3 + 2 + 5)
    stop
end program ponderada
