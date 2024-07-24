      program test
      integer r
      r=2456213
      do 1 i=1,10
          r=r*65539
          write(*,*) r
    1 continue
      stop
      end
      