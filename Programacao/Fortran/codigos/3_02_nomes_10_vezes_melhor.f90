!
! Mostra o nome de uma pessoa dez vezes - versão melhorada usando o DO
! OBS: Quando aumenta o número de vezes, não aumenta o tamanho do programa
!
PROGRAM nome_10_vezes_melhor
    IMPLICIT NONE
    INTEGER :: vez  ! Variável de controle do DO - sempre inteira

    DO vez = 1, 10, 1  ! Faz repetir 10 vezes o que esta dentro do DO
        WRITE (*, *) "Meu nome completo"  ! Mostra o nome uma só vez
    END DO
    STOP  ! Encerra após a repetição do nome 10 vezes
END PROGRAM nome_10_vezes_melhor
