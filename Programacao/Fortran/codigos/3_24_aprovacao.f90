!
! Programa para calcular a media aritmetica de 3 notas e, caso a media for maior
! ou igual a 7, indicar através de mensagem a aprovacao.
!
PROGRAM aprovacao
   IMPLICIT NONE
   REAL :: n1, n2, n3, media
   
   WRITE (*, *) "Informe as 3 notas do aluno: "
   READ (*, *) n1, n2, n3
   media = (n1 + n2 + n3) / 3
   WRITE (*, *) "A media obtida pelo aluno foi ", media
   IF (media >= 7) THEN
      WRITE (*, *) "O aluno foi aprovado!"
   END IF
   STOP
END PROGRAM aprovacao

