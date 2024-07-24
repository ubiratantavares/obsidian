!
! Quest�o 07 da Lista 07 de exerc�cios para sala de aula - Cap�tulo F90/5
!
program tempo_decorrido
    implicit none
    integer :: tempo_decorrido_segundos, dias, horas, minutos, segundos

    write(*, *) "Utiliza uma sub-rotina que recebe uma quantidade de segundos decorridos"
    write(*, *) "e retorna o valor correspondente em quatro vari�veis:"
    write(*, *) "dias, horas, minutos e segundos. O programa ler� e converter� e mostrar�"
    write(*, *) "v�rios tempos em segundos e, parar� quando ler um tempo negativo."
    write(*, *)
    write(*, *) "Informe um tempo decorrido em segundos, negativo para parar:"
    read(*, *) tempo_decorrido_segundos
    do while (tempo_decorrido_segundos >= 0)
        call converte_tempo(tempo_decorrido_segundos, dias, horas, minutos, segundos)
        write(*, *) "O tempo decorrido em segundos corresponde a:"
        write(*, *) dias, " dia(s)"
        write(*, *) horas, " hora(s)"
        write(*, *) minutos, " minuto(s)"
        write(*, *) segundos, " segundo(s)"
        write(*, *) "Informe um tempo decorrido em segundos, negativo para parar:"
        read(*, *) tempo_decorrido_segundos
    end do
    stop
end program tempo_decorrido

subroutine converte_tempo(tds, d, h, m, s)
    integer :: tds, d, h, m, s, sr

    d = tds / 86400
    sr = mod(tds, 86400)
    h = sr / 3600
    sr = mod(sr, 3600)
    m = sr / 60
    s = mod(sr, 60)
    return
end subroutine converte_tempo

