.                    �Sn!<    ..                   �Sn!      FAT_LU  FOR           ��� 3�  FUNCDECLFOR           �a!� �  GAUSS   FOR           \Yg!H�  IGQ     FOR           �Y|!z�  PRODMATRFOR           �d!M  PRODMV  FOR           �C!O  FAT_LU  TXT           .O!F�  IGQ2    FOR           �[|!}�                                                                                                                                                                                                  mode ='READ')
C
C     Lendo arquivo com dados
C
      PRINT*, 'Fatoracao LU: Ax=b'
      PRINT*, 'No. de linhas e colunas da matriz A'
      READ(*,*) col,lin
      DO 10 i=1, lin
	  READ(2,*) (a(i,j), j=1, col)
          PRINT*, (a(i,j), j=1, col)
   10 CONTINUE
      PRINT*,'Lendo o vetor b'
      READ(2,*) (b(i), i=1, lin)
      PRINT*, (b(i), i=1, lin)
      close (2)
C
C     Passando para a fatoracao LU...
C
      PRINT*, 'Calculando...'
      CALL Fat_LU (lin1,col1,lin,col,a,b,x,p)

      PRINT*, 'Saida:'
      CALL Exibe_Matriz (lin1,col1,lin,col,a,b,x,p)

      STOP
      END

      SUBROUTINE Fat_LU (lin1, col1, lin, col, mat_a, vet_b, vet_x,
     +    mat_p)
      INTEGER*1 col, lin, i, j, k, n, mat_p (lin1), li
      REAL*4 soma, m, mat_a (lin1,col1), vet_b (lin1), vet_x (lin1),
     +    pivo, max, el
C
C     Inicializando variaveis
C
      soma =0.0
      DO 20 k=1, lin
       vet_x(k)=0.0
       mat_p(k)=k
   20 CONTINUE
C
C     Calculando...
C
      DO 100 k=1, lin-1
C
C     Escolha do pivo
C
          pivo=abs(mat_a(k,k))
	  DO 180 j=k+1, lin-1
              max=abs(mat_a(j,k))
              li=k
C
C     Testa e, se necessario, faz a troca das linhas.
C
              if (max.gt.pivo) thee (ma at_a x=abs         k))
li= =k
       Te esta C    ece essa  se n a   tro , fazinh has. das l         
   (ma ax.g   if the ee ( ivo) x=a abs  at_a k)) )
l               =k
 C      e esta  se e n  essa , f fazi  tro das s l  has. 
     (        i if t ax.g ivo o) x ee ( at_ _a k abs           )
l =k 
 C      est ta      e ess sa , e n   tr ro d fazi has s.  s l              ( ax. .g i if t ee   ( a o) x abs s    _a k )
 
l =             e 
 C      e e ta   e n n    sa , faz zi h ro d s l l    s.       ( a      if   t e .g i o)   x a  ( a _a   k ) s             
l = 
   C      e ta     e  e e sa   , f n    ro   d s zi h s.      l           i  ( a .g   i o  t e  (   a _  x a s         k ) 
l   =            e t  C    e   e s    e n      r  , f zi   h s  d s l             (   a .    i  t   e    i o  x   a s  a _  k   ) 
                =   C        e t      e n  e s  ,   f z    r  d   s l  h s                   i    a .  i   o    e    a   _    a s           ) 
  =            e   t         e   s    e n      r    f z  h   s    s l                a   .    i    e        o    a   s    _    )   
                               t    e   n    s    f   z    r    s s          	r    s a .  i   o  	   _    a s l   f z  h   s                  a         e   s    e n   s                 _    )   
                        2      t    e   n2   s    f   z    r    FILE(4 d s zi h sWIND(4 d s zi h             ( a   L             s3s          	   s3a .  i   o  	     PR        _   )   
  s3a	s    f   z	             CALL Ex k  tk  IGQ     s3s  s    f   z    r              ( a   U             s4s          	   s4a .  i   o  	   _  PR        _   )   
  s