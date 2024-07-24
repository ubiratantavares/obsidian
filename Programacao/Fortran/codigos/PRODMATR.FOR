      DIMENSION A(100,100),B(100,100),C(100,100)
      WRITE(6,1)
    1 FORMAT('  Entre com as o valor de M,N e L ')
      READ(5,2) M,N,L
    2 FORMAT(3I5)
      READ(5,3) ((A(I,K),K=1,N),I=1,M)
    3 FORMAT(5F15.4)
      READ(5,3) ((B(K,J),J=1,L),K=1,N)
      I=0
   10 I=I+1
      J=0
   12 J=J+1
      C(I,J)=0.0
      K=0
   14 K=K+1
      C(I,J)=C(I,J)+A(I,K)*B(K,J)
      IF (K.LT.N) GO TO 14
      IF (J.LT.L) GO TO 12
      IF (I.LT.M) GO TO 10
      WRITE (6,3) ((C(I,J),J=1,L),I=1,M)
      STOP
      END
