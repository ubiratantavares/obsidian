program funcionario
    implicit none
    integer :: hhmmss, mmss, hh, mm, ss
    write (*, *) "Receber através de um único inteiro uma hora expressa no formato HHMMSS e apresentar:"
    write (*, *) "a) a hora expressa em HH : MM : SS;"
    write (*, *) "b) o total de minutos correspondentes; e"
    write (*, *) "c) o total de segundos correspondentes."
    write(*, *)
    write(*, *) "Informe a hora expressa no formato HHMMSS:"
    read(*, *) hhmmss
    hh = hhmmss / 10000
    mmss = mod (hhmmss, 10000)
    mm = mmss / 100
    ss = mod(mmss, 100)
    write(*, *) "Hora lida =" , hh, "         :", mm, "         :", ss
    write (*, *) "Minutos totais =", hh * 60 + mm + ss / 60.
    write (*, *) "Segundos totais =", hh * 3600 + mm * 60 + ss
    write(*, *)
    stop
end program funcionario