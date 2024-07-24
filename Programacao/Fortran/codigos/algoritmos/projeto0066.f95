program projeto0066

   integer i, MAX, vet1(10), vet2(10)

   ! programa principal

   MAX = 10
   print *, "Entre com os numeros do vetor 1: "
   do i = 1, MAX
      print *, "Numero: "
      read *, vet1(i)
   end do

   print *

   print *, "Entre com os numeros do vetor 2: "
   do i = 1, MAX
      print *, "Numero: "
      read *, vet2(i)
   end do

   call troca

   print *
   print *, "VETOR 1"    
   do i = 1, MAX 
      print *, "vet1[", i, "] = ", vet1(i)
   end do

   print *
   print *, "VETOR 2"    
   do i = 1, MAX 
      print *, "vet2[", i, "] = ", vet2(i)
   end do

   ! procedimento
   contains
   subroutine troca
      integer aux
      do i = 1, MAX
         if (vet1(i) > vet2(i)) then
            aux = vet1(i)
            vet1(i) = vet2(i)
            vet2(i) = aux
         end if
      end do
   end subroutine troca
      
end program projeto0066