program projeto0077

   character(45), parameter :: msg = 'Njoib/ufssb/ufn/qbmnfjsbt/poef/dboub/p/tbcjb.'
   print *, msg
   call decodifica(msg)       ! imprime a mensagem decodificada

   contains
   subroutine EhLetra(ch, booleano) 
      integer i
      logical r1, r2   
      character(1), intent(in) :: ch
      logical, intent(out) :: booleano
      r1 = .false.
      r2 = .false.
	  do i = 65, 90
         if (i .eq. iachar(ch)) then
           r1 = .true.
         endif
      end do
      do i = 97, 122
         if (i .eq. iachar(ch)) then
           r2 = .true.
         endif
      end do
      if (r1 .or. r2) then
	     booleano = .true.
      else
         booleano = .false.
      endif
   end subroutine EhLetra


   subroutine decodifica(msg)
      character(45), intent(in) :: msg 
      logical resultado
      integer i, codigo
      character(1) linha(45)    ! array (tamanho 45) de caracteres   

      do i = 1, len(msg)
         linha(i) = msg(i:i)
      end do

      do i = 1, len(msg)
         call EhLetra(linha(i), resultado)
         if (resultado) then
            if (linha(i) .eq. 'a') then
               linha(i) = 'z'
            else
               if (linha(i) .eq. 'A') then
                  linha(i) = 'Z'
               else
                  codigo = iachar(linha(i)) - 1
                  linha(i) = achar(codigo)
               endif               
            endif
         else
            if (linha(i) .eq. '/') then
               linha(i) = ' '
            endif
         endif   
      end do
      print *, linha      
   end subroutine decodifica   
      
end program projeto0077
