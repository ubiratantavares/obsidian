!
! Mostra o nome de uma pessoa dez vezes - vers�o melhorada usando o DO
! OBS: Quando aumenta o n�mero de vezes, n�o aumenta o tamanho do programa
!
PROGRAM nome_10_vezes_melhor
    IMPLICIT NONE
    INTEGER :: vez  ! Vari�vel de controle do DO - sempre inteira

    DO vez = 1, 10, 1  ! Faz repetir 10 vezes o que esta dentro do DO
        WRITE (*, *) "Meu nome completo"  ! Mostra o nome uma s� vez
    END DO
    STOP  ! Encerra ap�s a repeti��o do nome 10 vezes
END PROGRAM nome_10_vezes_melhor
