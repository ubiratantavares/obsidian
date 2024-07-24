program projeto0072
   integer base, expoente, p
   print *, "Base: "
   read *, base
   print *, "Expoente: "
   read *, expoente
   call potencia(base, expoente, p)
   print *, base, " ^ ", expoente, " = ", p
      
   ! procedimento
   contains
   subroutine potencia(b, e, resultado)
      integer i
      integer, intent(in) :: b
      integer, intent(in) :: e
      integer, intent(out) :: resultado
      resultado = 1
	  do i = 1, e
         resultado = resultado * b
      end do
   end subroutine potencia
end program projeto0072


    
