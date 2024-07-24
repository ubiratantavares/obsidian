!
! Exercício 2.5
!
!
! Programa que receba um  tempo decorrido em segundos e o transforma
! em um tempo decorrido em horas, minutos e segundos (HH:MM:SS)
!
PROGRAM hms
    IMPLICIT NONE
    INTEGER :: horas, minutos, segundos, totalDeSegundos, segundosRestantes
    
    ! Apresentação da finalidade do programa
    WRITE(*, *) "Tranformação de um tempo decorrido em segundos para"
    WRITE(*, *) "um tempo decorrido em horas, minutos e segundos (HH:MM:SS):"
    WRITE(*, *)
    WRITE(*, *) "Informe o tempo total decorrido em segundos: "
    READ (*, *) totalDeSegundos
    ! Cálculo das horas
    horas = totalDeSegundos / 3600
    ! Cálculo dos segundos restantes menos as horas
    segundosRestantes = MOD(totalDeSegundos, 3600)
    ! Cálculo dos minutos
    minutos = segundosRestantes / 60
    ! Cálculo dos segundos restantes menos as horas e menos os minutos
    segundos = MOD(segundosRestantes, 60)
    ! Apresentação dos resultados
    WRITE(*, *) totalDeSegundos, " segundos decorridos, equivale a:"
    WRITE (*, *) horas, "        :", minutos, "        :", segundos, " H"
    STOP
END PROGRAM hms
     