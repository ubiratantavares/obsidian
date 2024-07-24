program projeto0074
   real a, b, c 
   logical erro 

   print *, "Dividendo:"
   read *, a
   print *, "Divisor: "
   read *, b
   call verificaDivisao(b, erro)
   if (erro) then
      print *, "Erro: Divisao por Zero."
   else
      call divide(a, b, c)
      print *, a, " dividido por ", b, " = ", c
   end if
      
   ! procedimento
   contains
   subroutine verificaDivisao(divisor, erro)
      real, intent(in) :: divisor
      logical, intent(out) :: erro
      
	  if (divisor .eq. 0) then
          erro = .true.
      else
          erro = .false.
      end if
   end subroutine verificaDivisao

   subroutine divide(dividendo, divisor, quociente)
      real, intent(in) :: dividendo
      real, intent(in) :: divisor
      real, intent(out) :: quociente

      quociente = dividendo / divisor
   end subroutine divide
end program projeto0074


    
