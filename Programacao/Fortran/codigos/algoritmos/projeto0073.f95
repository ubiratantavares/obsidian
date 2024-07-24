program projeto0073
   integer D, V, R
   print *, "Dividendo: "
   read *, D
   print *, "Divisor: "
   read *, V
   
   call restoDivisaoInteira(D, V, R)
   print *, "Resto da divisao inteira de ", D, " por ", V, " = ", R
      
   ! procedimento
   contains
   subroutine restoDivisaoInteira(dividendo, divisor, resto)
      integer, intent(in) :: dividendo
      integer, intent(in) :: divisor
      integer, intent(out) :: resto
      resto = dividendo
      do while (resto >= divisor)
         resto = resto - divisor
      end do
   end subroutine restoDivisaoInteira
end program projeto0073


    
