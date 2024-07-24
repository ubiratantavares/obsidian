      DIMENSION A(15,16),X(15)
      WRITE(6,10)
   10 FORMAT(//,2X,'Entre com a Ordem da Matriz')
      READ(5,1) N
    1 FORMAT(I2)
      M=N+1
      WRITE(6,15)
   15 FORMAT(//,2X,'Entre com as componentes da Matriz e do Vetor Indepe
     *ndente em linha')
      DO 160 I=1,N
	  DO 150 J=1,M
	       READ(5,2) A(I,J)
    2	       FORMAT(F10.5)
  150	  CONTINUE
  160 CONTINUE
      CALL GAUSS(N,A,X)
      WRITE(6,20)
   20 FORMAT(//,2X,'Solucao do Sistema de Equacoes/Metodo de Gauss')
      DO 200 I=1,N
	  WRITE(6,3) X(I)
    3	  FORMAT(' ',F10.9)
  200 CONTINUE
      STOP
      END

      SUBROUTINE GAUSS(N,A,X)
      DIMENSION A(15,16),X(15)
      M=N+1
      L=N-1
      DO 1140 K=1,L
	  JJ=K
	  KP=K+1
	  DO 1100 I=KP,N
		  QT=A(I,K)/A(K,K)
		  DO 1090 J=KP,M
			A(I,J)=A(I,J)-QT*A(K,J)
 1090		  CONTINUE
 1100	  CONTINUE
	  DO 1130 I=KP,N
		  A(I,K)=0.
 1130	  CONTINUE
 1140 CONTINUE
      X(N)=A(N,M)/A(N,N)
      DO 1240 NN=1,L
	  SUM=0.
	  I=N-NN
	  IP=I+1
	  DO 1220 J=IP,N
		  SUM=SUM+A(I,J)*X(J)
 1220	  CONTINUE
      X(I)=(A(I,M)-SUM)/A(I,I)
 1240 CONTINUE
      RETURN
      END
