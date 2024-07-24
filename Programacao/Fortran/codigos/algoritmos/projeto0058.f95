program projeto0058
   
   character*1 letra
   integer consoante

   print *, "Entre com uma letra: "
   read *, letra
   call EhConsoante
   print *, ""
   if (consoante == 1) then
     print *, "Eh consoante"   
   else
     print *, "Eh vogal"
   end if

   ! DECLARACAO DO PROCEDIMENTO
   contains
      subroutine EhConsoante
         if ((letra == "a") .or. (letra == "e") .or. (letra == "i") .or. (letra == "o") .or. (letra == "u")) then
           consoante = 0
         else if ((letra == "A") .or. (letra == "E") .or. (letra == "I") .or. (letra == "O") .or. (letra == "U")) then
           consoante = 0
         else
           consoante = 1
         end if
      end subroutine EhConsoante
end program projeto0058