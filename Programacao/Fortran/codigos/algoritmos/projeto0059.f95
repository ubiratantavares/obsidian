program projeto0059
   integer sexo
   real peso, altura

   print *, "Entre com o sexo: "
   read *, sexo
   print *, "Entre com a altura: "
   read *, altura

   call pesoIdeal
   
   print *, ""
   print *, "Peso ideal: ", peso


   ! DECLARACAO DO PROCEDIMENTO
   contains
      subroutine pesoIdeal
         if (sexo == 0) then
           peso = 72.7 * altura - 58.0
         else
           peso = 62.1 * altura - 44.7
         end if
      end subroutine pesoIdeal 

end program projeto0059