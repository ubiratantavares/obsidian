C             Declaracao das variáveis do programa principal

      INTEGER*4 i,j,n,m,a,lamb,semente,t
      INTEGER*4 h(50), auxh(50)
      REAL*4 temp, deltae, w , fator
        
C     onde a variavel fator = kT/J
       
C              Abertura dos arquivos de saida de dados

      OPEN(6,FILE = 'ARQ1.DAT')
      OPEN(8,FILE = 'TESTE.DAT') 
      OPEN(5,FILE = 'ARQ2.DAT')
      
C                 Inicializacao das variáveis
      
      t = 0
      n = 20
      a = 5
      lamb = 20
      fator = 2.5
      DO i = 1 , n
          h(i) = NINT(real(a)*SIN(2.0*3.14*real(i)/real(lamb)))
          auxh(i) = h(i)   
      END DO
      h(n+1) = h(1)
      auxh(n+1) = auxh(1)
      DO i = 1 , n
          WRITE(6,*) i,h(i)
      END DO
                              
C                      PROGRAMA PRINCIPAL

      WRITE(*,*) ' Entre com a semente:'
      READ(*,*) semente
      CALL SEED(semente)
      DO WHILE (t .LT.400)
        DO 10, j = 1 , n
          CALL RANDOM(temp) 
          i = INT(temp * n) + 1
          WRITE(8,*) temp,j,i
          m = 0   
          deltae = 0.0
          CALL RANDOM(temp)
          WRITE(8,*) temp
          IF (temp .LE. .5) THEN
      
C      evaporacao      
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
          ELSE

C      condensacao
      
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
          WRITE(8,*) m , deltae
          IF (deltae .LT. .0) THEN
              h(i) = auxh(i)
          ELSE    
              w = EXP(-deltae/fator)
              CALL RANDOM(temp)
              write(8,*) temp , w
              IF (temp .LT. w) THEN
                      h(i) = auxh(i)
              ELSE
                  auxh(i) = h(i)
              END IF
          END IF 
          h(n+1) = h(1)
          auxh(n+1) = auxh(1)
          write(8,*)
          write(8,*)
  10  CONTINUE 
      t = t + 1
      END DO   
      WRITE(*,*) t
      DO i = 1, n
          WRITE(5,*) i, h(i) 
      END DO
      STOP 
      END