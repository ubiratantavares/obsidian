C     RESOLUCAO DA EQUACAO  LOG A . X = LOG B, A E B POSTIVOS
      READ(5,10) A,B
   10 FORMAT(2F5.2)
      X = ALOG(B)/ALOG(A)
      WRITE(6,20) X
   20 FORMAT(1X,F9.7)
      STOP
      END
