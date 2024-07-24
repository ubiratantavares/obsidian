!
! Ordena��o crescente de um conjunto de N nomes
!
PROGRAM ordena_nomes
   IMPLICIT NONE
   ! Declara�ao de vari�veis
   INTEGER :: indice, vezes, n
   CHARACTER (LEN = 40) :: nomes(50), aux
   
   ! Apresenta�ao da finalidade do programa
   WRITE(*, *) "Ordena��o crescente de um conjunto de N nomes: "
   WRITE(*, *)
   ! Leitura da quantidade de nomes do conjunto
   WRITE(*, *) "Informe a quantidade (N) de nomes a ordenar (N menor ou igual a 50): "
   READ (*, *) n
   ! Leitura dos elementos de nomes do conjunto
   WRITE(*, *) "Informe os ", n, " nomes a ordenar: "
   WRITE(*, *)
   READ (*, *) (nomes(indice), indice = 1, n, 1)
   ! Impress�o do conjunto desordenado
   WRITE(*, *)
   WRITE(*, *) "Nomes lidos: "
   DO indice = 1, n, 1
      WRITE (*, *) nomes(indice)
   END DO
   ! Ordena��o crescente com troca de posi��es
   DO vezes = 1, n - 1, 1
      DO indice = 1, n - 1, 1
         IF (nomes(indice) .GT. nomes(indice + 1)) THEN
            aux = nomes(indice)
            nomes(indice) = nomes(indice + 1)
            nomes(indice + 1) = aux
         END IF
      END DO
   END DO
   ! Impress�o do conjunto ordenado
   WRITE(*, *)
   WRITE(*, *) "Nomes ordenados: "
   DO indice = 1, n, 1
      WRITE (*, *) nomes(indice)
   END DO
   STOP
END PROGRAM ordena_nomes



