!
! Conta os aprovados e reprovados de uma turma de 50 alunos
!
PROGRAM AVALIA
   IMPLICIT NONE
   INTEGER :: APROV, REPROV, I
   REAL :: TOTAL, NOTA2, NOTA3, MEDIA
   READ (*, *) NOTAl, NOTA2, NOTA3
   APROV = 0

  REPROV = 0
   DO I = 1, 50
      READ (*, *) NOTA1, NOTA2, NOTA3
      MEDIA = (NOTA1 + NOTA2 + NOTA3 ) /3
      IF (MEDIA .GE. 5.0) THEN
         APROV = APROV + 1
      ELSE
         REPRV = REPROV + 1
      END IF
      PRINT *, NOTA1, NOTA2, NOTA3, MEDIA
   END DO
   PRINT *, “TOTAL DE APROVADOS = ”, APROV
   PRINT *, “TOTAL DE REPROVADOS = ”, REPROV
   STOP
END PROGRAM AVALIA 
