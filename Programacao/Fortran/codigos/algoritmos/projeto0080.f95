program projeto0080
   
   integer :: n1, n2

   print *, "ENTRE COM OS NUMEROS"
   print *, "NUMERO 1: "
   read *, n1
   print *, "NUMERO 2: "
   read *, n2
   print *, "O maior numero é ", maior(n1, n2)

   contains  

   ! funcao que retorna o maior entre dois numeros
   function maior(n1, n2)
      integer, intent(in) :: n1, n2
      integer :: maior
      if (n1 > n2) then
         maior = n1
      else 
         maior = n2
      endif
      return
   end function maior    
end program projeto0080
