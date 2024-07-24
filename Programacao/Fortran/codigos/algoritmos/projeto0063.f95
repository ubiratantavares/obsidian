program projeto0063
   
   integer num, resultado

   print *, "Entre com o numero: "
   read *, num
   print *, ""
   if (num >= 0) then
     call Fatorial
     print *, "O fatorial de ", num, " eh ", resultado
   else
     print *, "Fatorial nao definido para numero negativo."
   end if

   ! DECLARACAO DO PROCEDIMENTO
   contains
      subroutine Fatorial
         integer i
         resultado = 1
         do i = 1, num
			resultado = resultado * i
         end do         
      end subroutine Fatorial   
end program projeto0063