program projeto0078

   integer lista(10)   ! vetor de inteiros
   integer chave, p, u

   print *, "ENTRADA DE DADOS"
   do i = 1, 10
      print *, "Numero: "
      read *, lista(i)
   end do

   print *, "Entre com a chave de busca: "
   read *, chave

   call busca(chave, p, u)
   if (p .eq. 0) then
      print *, "Chave nao encontrada"
   else
      print *, "Primeira ocorrencia da chave: ", p
      print *, "Segunda ocorrencia da chave: ", u
   endif

   contains
   subroutine busca(elemento, primeiro, ultimo)
      integer, intent(in) :: elemento
      integer, intent(out) :: primeiro
      integer, intent(out) :: ultimo
      logical achou
      integer i
      achou = .false.
      primeiro = 0
      ultimo = 0
      do i = 1, 10
         if (lista(i) .eq. elemento) then
            ultimo = i
            if (.not. achou) then
               achou = .true.
               primeiro = i
            endif
         endif
      end do
   end subroutine busca 
      
end program projeto0078
