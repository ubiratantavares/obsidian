program projeto0062
   
   real a, b, c
   logical erro

   print *, "Digite o dividendo: "
   read *, a
   print *, "Digite o divisor: "
   read *, b

   call divide

   if (erro) then
     print *, "Erro: Divisao por zero."
   else
     print *, a, " dividido por ", b, " = ", c
   end if

   ! DECLARACAO DO PROCEDIMENTO
   contains
      subroutine divide
         if (b == 0.0) then
           erro = .true.
         else
           erro = .false.
           c = a / b
         end if
      end subroutine divide
   
end program projeto0062