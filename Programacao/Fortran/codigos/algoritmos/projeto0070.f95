program projeto0070

   character(100), parameter :: fr1 = 'A pova estava facil'
   character(101) fr2   

   print *, fr1
   call insere(4, 'r' , fr1, fr2)
   print *, fr2
   
   contains
   subroutine insere(posicao, caracter, frase1, frase2)    
      integer, intent(in) :: posicao
      character(1), intent(in) :: caracter
      character(100), intent(in) :: frase1      
      character(101), intent(out) :: frase2
      frase2 = frase1(1:posicao - 1) // caracter // frase1(posicao:100)
   end subroutine insere
   
end program projeto0070


    
