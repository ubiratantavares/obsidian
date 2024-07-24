!
! Programa que gera o conjunto união de dois conjuntos inteiros lidos
!
PROGRAM conjunto_uniao
    IMPLICIT NONE
    INTEGER :: indice1, indice2, indice3, num1, num2
    INTEGER :: conj1(50), conj2(50), conjuniao(100)
    LOGICAL :: achei
  
    ! Apresentaçao da finalidade do programa
    WRITE(*, *) "Programa que gera o conjunto união de dois conjuntos inteiros lidos:"
    WRITE(*, *)
    ! Leitura dos dados do primeiro conjunto
    WRITE (*, *) "Quantos elementos inteiros tem o conjunto 1 (máximo = 50): "
    READ (*, *) num1
    WRITE (*, *) "Informe os elementos inteiros do conjunto 1: "
    DO indice1 = 1, num1, 1
        READ (*, *) conj1(indice1)
    END DO
    ! Leitura dos dados do segundo conjunto
    WRITE (*, *) "Quantos elementos inteiros tem o conjunto 2 (máximo = 50): "
    READ (*, *) num2
    WRITE (*, *) "Informe os elementos inteiros do conjunto 2: "
    DO indice1 = 1, num2, 1
        READ (*, *) conj2(indice1)
    END DO
    ! Geraçao do conjunto união
    !
    ! Copia os elementos do primeiro conjunto para o conjunto união
    DO indice1 = 1, num1, 1
        conjuniao(indice1) = conj1(indice1)
    END DO
    ! Copia dos elementos do segundo conjunto que não existem no primeiro
    ! para o conjunto união
    indice3 = num1
    DO indice2 = 1, num2, 1
        achei = .FALSE. ! A principio, não existe no primeiro conjunto
        DO indice1 = 1, num1, 1
            IF (conj2(indice2) == conj1(indice1)) THEN
                achei = .TRUE. ! Encontrou um elemento do segundo conjunto no primeiro
            END IF
        END DO
        IF (.NOT. achei) THEN
            ! Não encontrou um elemento do segundo conjunto no primeiro,
            ! Então inclui no conjunto união
            indice3 = indice3 + 1
            conjuniao(indice3) = conj2(indice2)
        END IF
    END DO
    ! Apresentação do conjunto união
    WRITE (*, *) "Conjunto Uniao: "
    DO indice1 = 1, indice3, 1
        WRITE(*, *) conjuniao(indice1)
    END DO
    STOP
END PROGRAM conjunto_uniao
   