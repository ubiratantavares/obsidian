program projeto0065

   integer i, N
   real numero(10), media(10)

   ! programa principal
   N = 10
   print *, "Entre com os numeros"
   do i = 1, N
     print *, "Numero: "
     read *, numero(i)
   end do

   print *, ""

   do i = 1, N 
      print *, "Numero[", i, "] = ", numero(i)
   end do

   call calculaMedia;

   print *, ""

   do i = 1, N 
      print *, "Media[", i, "] = ", media(i)
   end do

   ! procedimento
   contains
      subroutine calculaMedia
         media(1) = (numero(1) + numero(2)) / 2.0
         media(N) = (numero(N-1) + numero(N)) / 2.0
         do i = 2, N - 1
            media(i) = (numero(i-1) + numero(i) + numero(i+1)) / 3.0
         end do
      end subroutine calculaMedia
end program projeto0065