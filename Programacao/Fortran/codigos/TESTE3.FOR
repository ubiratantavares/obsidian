      program test
      integer*4 semen
      write(*,*) 'semente?'
      read(*,*) semen  
      call srand(semen)
      do 1 i=1,10
          call srand(semen)
          write(*,*) semen
    1 continue
      stop
      end
      