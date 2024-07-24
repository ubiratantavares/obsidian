program projeto0075

   real a, b, c, delta, x1, x2
   logical erro, acabou

   acabou = .false.

   do while (.not. acabou) 
      print *, "Digite o coeficiente a: "
      read *, a
      if (a .eq. 0) then
         acabou = .true.
      else
         print *, "Digite o coeficiente b: "
         read *, b
         print *, "Digite o coeficiente c: "
         read *, c
         call calculaDelta(a, b, c, delta)
         call verificaDelta(delta, erro)	
         if (erro) then
           print *, "Raizes Imaginarias."
         else
           call calculaRaizes(a, b, delta, x1, x2)
           print *, "x1 = ", x1
           print *, "x2 = ", x2
         end if
      end if
   end do
      
   ! procedimento
   contains
   subroutine calculaDelta(a, b, c, d)
      real, intent(in) :: a, b, c
      real, intent(out) :: d
      d = b**2 - 4 * a * c
   end subroutine calculaDelta

   subroutine verificaDelta(d, erro)
      real, intent(in) :: d
      logical, intent(out) :: erro
      if (d .lt. 0) then
         erro = .true.
      else
         erro = .false.
      end if
   end subroutine verificaDelta

   subroutine calculaRaizes(a, b, d, x1, x2)
      real, intent(in) :: a, b, d
      real, intent(out) :: x1, x2
      real fator
      fator = 1 / (2 * a)
      x1 = fator * (-b + sqrt(d))
      x2 = fator * (-b - sqrt(d))
   end subroutine calculaRaizes
end program projeto0075


    
