program projeto0061

   real num, resultado

   print *, "Entre com um numero: "
   read *, num

   call absoluto

   print *, ""
   print *, "O valor absoluto de ", num, " eh ", resultado


   ! DECLARACAO DO PROCEDIMENTO
   contains
      subroutine absoluto
         if (num >= 0) then
           resultado = num
         else
           resultado = (-1) * num
         end if
      end subroutine absoluto   
end program projeto0061