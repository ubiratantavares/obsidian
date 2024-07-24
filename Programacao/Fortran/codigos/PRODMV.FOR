      DIMENSION A(25,50), X(50), B(25)
C.....Leitura das dimensoes da matriz, M e N.
      READ(5,15) M, N
   15 FORMAT(2I5)
C.....Leitura da matriz A e do vetor X
      READ(5,16) ((A(I,J), J=1,N), I=1, M)
   16 FORMAT(5F15.4)
      READ(5,16) (X(I), I= 1,N)
C.....Multiplicacao das matrizes
      I=0
    2 I = I + 1
      B(I) = 0
      J = 0
    6 J = J + 1
      B(I) = B(I) + A(I,J)*X(J)
      IF (J.LT.N) GO TO 6
      IF (I.LT.M) GO TO 2
C.....Saida
      WRITE(6,16) (B(I), I=1, M)
      STOP
      END
