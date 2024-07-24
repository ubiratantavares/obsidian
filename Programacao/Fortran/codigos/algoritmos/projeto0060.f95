program projeto0060
   real L1, L2, L3, area
   logical acabou

   acabou = .false.

   do while (.not. acabou) 
     print *, "Digite lado L1:"
     read *, L1
     print *, "Digite lado L2:"
     read *, L2
     print *, "Digite lado L3:"
     read *, L3
     print *, ""

     if ((L1 < (L2 + L3)) .and. (L2 < (L1 + L3)) .and. (L3 < (L1 + L2))) then
       call AreaTri
       print *, "Area do triangulo: ", area
     else
       print *, "Os lados nao formam um triangulo."
       acabou = .true.
     end if
     print *, ""
   end do

   ! DECLARACAO DO PROCEDIMENTO
   contains
     subroutine AreaTri
        real x
        x = (L1 + L2 + L3) / 2.0
        x = x * (x - L1) * (x - L2) * (x - L3)
        area = sqrt(x)
     end subroutine AreaTri
end program projeto0060