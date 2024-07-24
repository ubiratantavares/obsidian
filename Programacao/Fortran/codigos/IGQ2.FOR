C **** Programa de Implementacao do Metodo da Quadratura de Gauss ***

      DIMENSION C(11), X(11), JO(5), JL(5)
      DATA C/1.,.888888,.555555,.652145,.347855,.568889,.478629,
     *.236927,.467914,.360762,.171324/
      DATA X/.577350,0.,.774597,.339981,
     *.861136,0.,.538469,.906180,.238619,
     *.661209,.932470/
      DATA JO/1,3,4,7,9/
      DATA JL/1,3,5,8,11/
      FC(Y,Z,W) = Y+Z*W
      F(X) = 0.2+25*X-200*X**2+675*X**3-900*X**4+400*X**5
      WRITE(6,1)
    1 FORMAT('O',5X,'GAUSS QUADRATURE',//)
      WRITE(6,2)
    2 FORMAT(5X,'Entre com os limites de integracao : ',//)
      READ(5,4) A , B
    4 FORMAT(2F10.0)
      A0 = (B+A)/2
      A1 = (B-A)/2
      DO 410 I = 1 , 5
	     SM = 0.
	     JA = JO(I)
	     JB = JL(I)
	     FI = (I/2)-I/2.
	     IF (FI.NE.0.) GO TO 350
		 K = (I-1)*2
		 A2 = X(K)
		 SM = SM + C(K) * F( FC(A0,A1,A2) )
  350	     DO 380 L = JA , JB
		    A2 = X(L)
		    SM = SM + C(L) * F( -FC(A0,A1,A2) )
		    SM = SM + C(L) * F(  FC(A0,A1,A2) )
  380	     CONTINUE
	     SM = SM * A1
	     M = I+1
	     WRITE(6,5) M , SM
    5	     FORMAT('O',I5,'POINT ESTIMATE = ',F10.3)
  410 CONTINUE
      STOP
      END
