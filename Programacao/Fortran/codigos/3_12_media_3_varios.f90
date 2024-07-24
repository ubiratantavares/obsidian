!
! Cálculo da média de 3 notas para vários alunos.
! O programa pára quando encontra uma nota negativa
!
PROGRAM media_3_1
   IMPLICIT NONE
   REAL :: nota1, nota2, nota3, MEDIA
   WRITE (*, *) “Este programa calcula a média aritmética de &
                &3 notas de vários alunos:”
   WRITE (*, *) “Informe as 3 notas DO aluno, separadas &
                &por brancos: ”
   READ (*, *) nota1, nota2, nota3
   DO WHILE (nota1 >= 0 .AND. nota2 >=0 .AND. nota3 >= 0)
      MEDIA = (NOTA1 + NOTA2 + NOTA3) / 3.
      WRITE (*, *) “NOTAS DO ALUNO NA DISCIPLINA: ”, NOTA1, “, ”, &
                   &“NOTA2, “ e ”,  NOTA3
      WRITE (*, *) “MÉDIA NA DISCIPLINA = ”, MEDIA
      WRITE (*, *) “Informe as 3 notas DO aluno, separadas &
                   &por brancos: ”
      READ (*, *) NOTA1, NOTA2, NOTA3
   END DO
   STOP
END PROGRAM media_3_1

