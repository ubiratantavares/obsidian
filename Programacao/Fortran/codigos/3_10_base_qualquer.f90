!
! Converte um valor de uma base qualquer entre 2 e 9, para decimal
!
PROGRAM base_qualquer
    IMPLICIT NONE
    INTEGER :: original, base, decimal, restante, digito, digitos, expoente, posicao
    
    ! Apresenta��o da finalidade do programa
    WRITE (*, *) "Converte um valor de uma base qualquer entre 2 e 9, para decimal: "
    WRITE (*, *)
    ! Leitura dos dados do valor a ser convertido
    WRITE (*, *) "Informe a base do valor original para ser convertido: "
    READ (*, *) base
    WRITE (*, *) "Informe o numero de digitos do valor original para ser convertido: "
    READ (*, *) digitos
    WRITE (*, *) "Informe o valor original para ser convertido: "
    READ (*, *) original
    restante = original  ! Preserva o valor original para uso no resultado
    decimal = 0  ! Valor inicial para receber a soma
    ! Convers�o para decimal
    DO posicao = digitos, 1, -1  ! posicao = posi��o da cada d�gito do valor original
        expoente = posicao - 1  ! expoente da base que multiplica o d�gito desta posi�ao
        digito = restante / 10 ** expoente  ! separa um digito do valor original
        decimal = decimal + digito * base ** expoente  ! valor decimal correspondente a um d�gito do valor original
        restante = MOD(restante, 10 ** expoente)  ! retira um d�gito do valor original
    END DO
    ! Apresenta�ao do resultado
    WRITE (*, *) "Valor original na base", base, " =", original
    WRITE (*, *) "Valor decimal convertido           =", decimal
    STOP
END PROGRAM base_qualquer
    