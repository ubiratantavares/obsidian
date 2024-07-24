!
! Programa para calcular a média aritmética de tres notas lidas de um aluno
!
PROGRAM media3
   IMPLICIT NONE ! Não há declarações explícitas
   ! Declaração das variáveis
   REAL :: nota1, nota2, nota3, media

   ! Apresentação do resultado
   WRITE (*, *) "Este programa calcula a média aritmética de &
                &3 notas de um aluno"
   WRITE (*, *)
                ! Solicitação das notas
   WRITE (*, *) "Informe as 3 notas DO aluno, separadas &
                &por brancos: "
   READ (*, *) nota1, nota2, nota3
   ! Cálculo da média
   media = (nota1 + nota2 + nota3) / 3.
   ! Saída dos programa
   WRITE (*, *) "NOTAS DO ALUNO NA DISCIPLINA: ", nota1, ", ", &
                &nota2, " e ",  nota3
   WRITE (*, *)
   WRITE (*, *) "MÉDIA NA DISCIPLINA = ", media
   STOP
END PROGRAM media3