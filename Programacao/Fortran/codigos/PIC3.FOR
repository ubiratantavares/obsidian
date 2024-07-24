C             DECALARACAO DAS VARIAVEIS DO PROGRAMA

      INTEGER*4 i,j,n,m,a,lamb,t
      INTEGER*4 h(150), auxh(150)
      REAL*4 temp, deltae, w , fator
                         
C     A variavel fator = kT/J
       
C              ABERTURA DOS ARQUIVOS DE DADOS DE SAIDA

      OPEN(5,FILE = 'EI.DAT')
      OPEN(6,FILE = 'EF.DAT')
      
C                 INICIALIZACAO DAS VARIAVEIS
      
      t = 0
      n = 100
      a = 25
      lamb = 100
      fator = 3.5
      DO i = 1 , n
          h(i) = NINT(a*SIN((2.0*3.14*i)/lamb))
          auxh(i) = h(i)   
      END DO
      h(n+1) = h(1)
      auxh(n+1) = auxh(1)
      DO i = 1 , n
          WRITE(5,*) i,h(i)
      END DO                      
                                    
C                      PROGRAMA PRINCIPAL   
                           
      CALL SEED(7531)    
      DO WHILE (t .LT. 1000)
        DO 10, j = 1 , n
          CALL RANDOM(temp) 
          i = INT(temp * n) + 1
          m = 0   
          deltae = .0
          w = .0
          CALL RANDOM(temp)
          IF (temp .LE. .5) THEN
      
C                           EVAPORACAO
   
              auxh(i) = auxh(i) - 1
              IF (i .EQ. 1) THEN
                      IF (h(n) .GE. h(i)) THEN
                              m = m + 1
                      END IF
                      IF (h(i+1) .GE. h(i)) THEN
                              m = m + 1
                      END IF
              ELSE
                      IF (h(i-1) .GE. h(i)) THEN
                              m = m + 1
                      END IF
                      IF (h(i+1) .GE. h(i)) THEN
                              m = m + 1
                      END IF
              END IF
              deltae = REAL(2*(m - 1)) 
          
C                              CONDENSACAO          
          
          ELSE
              auxh(i) = auxh(i) + 1
              IF (i .EQ. 1) THEN
                      IF (auxh(n) .GE. auxh(i)) THEN
                              m = m + 1
                      END IF
                      IF (auxh(i+1) .GE. auxh(i)) THEN
                              m = m + 1
                      END IF
              ELSE
                  IF (auxh(i-1) .GE. auxh(i)) THEN
                      m = m + 1
                  END IF
                  IF (auxh(i+1) .GE. auxh(i)) THEN
                      m = m + 1
                  END IF
              END IF
              deltae = REAL(2*(1 - m))    
          END IF   
          
C              TESTE PARA SABER SE ACEITO OU NAO A NOVA CONFIGURACAO          
          
          IF (deltae .LT. .0) THEN
              h(i) = auxh(i)
          ELSE    
              w = EXP(-deltae/fator)
              CALL RANDOM(temp)
              IF (temp .LT. w) THEN
                      h(i) = auxh(i)
              ELSE
                  auxh(i) = h(i)
              END IF
          END IF 
          h(n+1) = h(1)
          auxh(n+1) = auxh(1)
  10  CONTINUE 
      t = t + 1
      END DO 
      
C              DADOS DE SAIDA DA NOVA CONFIGURACAO      
        
      DO i = 1, n
          WRITE(6,*) i, h(i) 
      END DO
      STOP 
      END