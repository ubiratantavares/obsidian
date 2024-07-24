!
! Calculo da média de 3 notas para 10 alunos, usando DO WHILE
!
PROGRAM media_3
   IMPLICIT NONE
   REAL :: nota1, nota2, nota3, media
   INTEGER :: cont
   WRITE (*, *) "Este programa calcula a média aritmética de 3 notas de 10 alunos,"
   WRITE (*, *) "usando um DO WHILE:"
   WRITE (*, *)
   cont = 1
   DO WHILE (cont <= 10)
      WRITE (*, *) "Informe as 3 notas do aluno, separadas por brancos: "
      READ (*, *) nota1, nota2, nota3
      media = (nota1 + nota2 + nota3) / 3.
      WRITE (*, *) "Notas do aluno na disciplina: ", nota1, ", ", &
                   &nota2, " e ",  nota3
      WRITE (*, *) "Media da disciplina = ", media
      WRITE (*, *)
      cont = cont + 1
   END DO
   STOP
END PROGRAM media_3

