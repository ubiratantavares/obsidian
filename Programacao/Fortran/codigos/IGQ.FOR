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
    1 FORMAT('O',5X,'GAUS                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                )
  380	     CONTINUE
	     SM = SM * A1
	     M = I+1
	     WRITE(6,5) M , SM
    5	     FORMAT('O',I5,'POINT ESTIMATE = ',F10.3)
  410 CONTINUE
      STOP
      END
