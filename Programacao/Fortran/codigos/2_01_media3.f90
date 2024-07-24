!
! Programa para calcular a m�dia aritm�tica de tres notas lidas de um aluno
!
PROGRAM media3
   IMPLICIT NONE ! N�o h� declara��es expl�citas
   ! Declara��o das vari�veis
   REAL :: nota1, nota2, nota3, media

   ! Apresenta��o do resultado
   WRITE (*, *) "Este programa calcula a m�dia aritm�tica de &
                &3 notas de um aluno"
   WRITE (*, *)
                ! Solicita��o das notas
   WRITE (*, *) "Informe as 3 notas DO aluno, separadas &
                &por brancos: "
   READ (*, *) nota1, nota2, nota3
   ! C�lculo da m�dia
   media = (nota1 + nota2 + nota3) / 3.
   ! Sa�da dos programa
   WRITE (*, *) "NOTAS DO ALUNO NA DISCIPLINA: ", nota1, ", ", &
                &nota2, " e ",  nota3
   WRITE (*, *)
   WRITE (*, *) "M�DIA NA DISCIPLINA = ", media
   STOP
END PROGRAM media3