program projeto0071
   character (len = 1):: c
   logical letra   
   letra = .false. 
   print *, "Entre com o caracter: "
   read *, c      
   call EhLetra(c, letra)   
   if (letra) then
      print *, "Eh letra!"
   else
      print *, "Nao Eh letra!"
   endif
   
   ! procedimento
   contains
   subroutine EhLetra(ch, resultado)
      integer i
      logical r1, r2
      character (len=1), intent(in)::ch
      logical, intent(out)::resultado
      r1 = .false.
      r2 = .false.
      do i = 65, 90
         if (ichar(ch) .eq. i) then
            r1 = .true.
         endif
      end do
      do i = 97, 122
         if (ichar(ch) .eq. i) then
            r2 = .true.
         endif
      end do
      resultado = r1 .or. r2
   end subroutine EhLetra
end program projeto0071


    
