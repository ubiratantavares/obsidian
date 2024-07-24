program projeto0069
   integer i, MAX
   integer vet(10)   
   MAX = 10   
   call main

   ! procedimento
   contains
   subroutine leitura
      print *, "Entre com os elementos do vetor"
      do i = 1, MAX
         print *, "Numero: "
         read *, vet(i)
      end do
   end subroutine leitura
   
   ! procedimento inverte
   subroutine inverte
      integer aux, meio
      meio = MAX/2
      do i = 1, meio
         aux = vet(i)
         vet(i) = vet(MAX - i + 1)
         vet(MAX - i + 1) = aux 
      end do
   end subroutine inverte

   ! procedimento imprime
   subroutine imprime
      print *, ""
      do i = 1, MAX
         print *, vet(i)
      end do
   end subroutine imprime   
   
   ! procedimento principal
   subroutine main
      call leitura
      call inverte
      call imprime
   end subroutine main
      
end program projeto0069