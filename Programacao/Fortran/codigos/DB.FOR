C     Universidade Federal Fluminense
C     Instituto de Física
C     Departamento de Física
C     Laboratório Profissional II
C     Física Computacional
C     Prof: Fábio
C     Aluno: Ubiratan da Silva Tavares
C
C     Programa que simula a deposição balistica sobre uma linha
C 
C     ************** Declaração das variaveis ***********************

      INTEGER*4 i , j , l, sem , soma1 , soma2
      INTEGER*4 h(1000), a , b , c   
      REAL*4 temp , w  , agaqm , agam
        
C     ************** Arquivo de saida dos dados *********************

      OPEN(6,FILE = 'db.DAT') 
      
C     ************** Inicializacao das variáveis ********************
      
      i = 1
      j = 1               
      l = 100  
      a = 0
      b = 0
      c = 0
      temp = 0.0
      w = 0.0
      agaqm = 0.0
      agam = 0.0
      DO i = 1 , l
           h(i) = 0   
      END DO    
      sem = 5679
      CALL SEED(sem)  
      
C     ******************* Programa Principal ************************  
      
      DO j = 1 , 100000      
           soma1 = 0
           soma2 = 0
           CALL RANDOM(temp) 
           i = INT(temp*real(l)) + 1    
           a = h(i)+1   
           IF ( i .EQ. 1) THEN
              b = h(l)
           ELSE
              b = h(i-1)
           END IF
           IF (i .EQ. l) THEN
              c = h(1)
           ELSE
              c = h(i+1) 
           END IF 
           IF ( b .GT. a ) THEN 
              IF ( b .GT. c ) THEN
                  h(i) = b
              ELSE   
                  h(i) = c
              END IF
           ELSE        
              IF ( c .GT. a ) THEN
                  h(i) = c
              ELSE
                  h(i) = a
              END IF
           END IF 
           DO i = 1 , l
                soma1 = soma1 + h(i)*h(i)
                soma2 = soma2 + h(i)
           END DO       
           agaqm = (REAL(soma1))/(REAL(l))
           agam = (REAL(soma2))/(REAL(l))
           w = agaqm - agam*agam 
           IF (MOD(j,100) .EQ. 0) THEN
                write(6,*) j , w**.5   
           END IF
      END DO
      STOP
      END 
C     ***************************************************************                