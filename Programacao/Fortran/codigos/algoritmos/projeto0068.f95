program projeto0068
   integer i, MAX, num
   
   MAX = 10
   
   call main

   ! procedimento dobro
   contains
   subroutine dobro
      num = 2 * num
   end subroutine dobro

   ! procedimento principal
   subroutine main
   	  do i = 1, MAX
         print *, "Entre com o numero: "
         read *, num
         call dobro
         print *, "Dobro: ", num
         print *, ""
      end do
   end subroutine main
      
end program projeto0068