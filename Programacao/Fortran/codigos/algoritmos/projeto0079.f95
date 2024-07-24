program projeto0079

   real lado(3)
   real area
   integer i

   do i = 1, 3
      print *, "Digite o lado ", i, " : "
      read *, lado(i)
   end do

   if (formaTri(lado(1), lado(2), lado(3))) then
      call areaTri(lado(1), lado(2), lado(3), area)
      print *, "Area do triangulo (procedimento): ", area
      print *, "Area do triangulo (funcao): ", areaTri2(lado(1), lado(2), lado(3))
   else
      print *, "Os lados nao forma um triangulo."
   endif

   contains  

   ! funcao que verifica se os lados formam um triagulo
   function formaTri(l1, l2, l3)
      real , intent(in) :: l1, l2, l3
      logical :: formaTri
      if ((l1 < (l2 + l3)) .and. (l2 < (l1 + l3)) .and. (l3 < (l1 + l2))) then
         formaTri = .true.
      else
         formaTri = .false.
      endif
      return
   end function formaTri

   ! procedimento que calcula a area de um triangulo
   subroutine areaTri(l1, l2, l3, area)
      real, intent(in) :: l1, l2, l3
      real, intent(out) :: area
      real :: p           ! p = semiperimetro
      p = (l1 + l2 + l3) / 2.0
   	  p = p * (p - l1) * (p - l2) * (p - l3)
      area = sqrt(p)
   end subroutine areaTri

   ! funcao que calculaa a area de um triangulo
   function areaTri2(l1, l2, l3)
      real, intent(in) :: l1, l2, l3
      real :: p           ! p = semiperimetro
      real :: areaTri2
      p = (l1 + l2 + l3) / 2.0
   	  p = p * (p - l1) * (p - l2) * (p - l3)
      areaTri2 = sqrt(p)
      return
   end function areaTri2      
end program projeto0079
