C.....DEFINICAO DA FUNCAO TRIG
      TRIG(X,Y) = SIN(X)**2+COS(Y)**2
C.....EXECUCAO DO PROGRAMA
      WRITE(6,12)
   12 FORMAT('    Entre com os lados do triangulo (a,b,c)')
      READ(5,24)A,B,C
   24 FORMAT(3F10.2)
      P = TRIG(A,B)
      Q = TRIG(B,A)
      R = TRIG(C,A)
      S = TRIG(A,C)
      V = TRIG(B,C)
      W = TRIG(C,B)
      WRITE(6,16)P,Q,R,S,V,W
   16 FORMAT(3X,6F16.7)
      STOP
      END
