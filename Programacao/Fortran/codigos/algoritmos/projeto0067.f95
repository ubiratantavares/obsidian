program projeto0067
   integer i, MAX, familia(10)
   MAX = 10
   call main

   ! procedimento estatistica
   contains
   subroutine estatistica
      integer conta1, conta5ao10, soma
      real media
      conta1 = 0
      conta5ao10 = 0
      soma = 0      
      do i = 1, MAX
         soma = soma + familia(i)
         if (familia(i) == 1) then
            conta1 = conta1 + 1
         else 
           if ((familia(i) >= 5) .and. (familia(i) <= 10)) then
            conta5ao10 = conta5ao10 + 1
           end if 
         end if
      end do
      media = 1.0 * soma / MAX
      print *, "Media de salarios minimos das familias: ", media
      print *, "Familias com 1 salario minimo: ", conta1
      print *, "Familias entre 5 e 10 salarios minimos: ", conta5ao10
   end subroutine estatistica

   ! procedimento principal
   subroutine main
      print *, "Renda familiar em salarios minimos"
   	  do i = 1, MAX
         print *, "Quantidade de salarios minimos da familia ", i, ": "
         read *, familia(i)
      end do
      print *
      call estatistica
   end subroutine main
      
end program projeto0067