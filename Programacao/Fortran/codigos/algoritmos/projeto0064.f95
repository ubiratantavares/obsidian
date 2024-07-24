program projeto0064
   
   integer i, N, MAX
   real aleatorio, nota(50)
   integer hist(10)

   N = 50
   MAX = 10

   do i = 1, MAX
     hist(i) = 0
   end do
   
   ! reinicia ou inicia a semente do gerador de numeros aleatorios
   call random_seed  

   print *, "NOTAS DOS ALUNOS"
   do i = 1, N 
      !print *, "Nota: "
      !read *, nota(i)

      ! retorna um numero pseudo-aleatorio entre 0 e 1
      call random_number(aleatorio)
      nota(i) = 10 * aleatorio
   end do

   do i = 1, N 
      print *, "Nota[", i, "] = ", nota(i)
   end do
   

   call montaHistograma

   print *, ""
   print *, "HISTOGRAMA DAS NOTAS DOS ALUNOS"
   do i = 1, MAX
     print *, "HIST[", i, "] = ", hist(i)
   end do

   
   ! DECLARACAO DO PROCEDIMENTO
   contains
      subroutine montaHistograma
         integer i, j
         do i = 1, N
           j = int(nota(i))
           if (j == 10) then
             hist(j) = hist(j) + 1
           else
             hist(j + 1) = hist(j + 1) + 1
           end if
         end do   
      end subroutine montaHistograma   
end program projeto0064