program projeto0057

   integer i, dentistas, MAX
   character*15 nome(3), profissao(3)

   MAX = 3
   print *, "CADASTRO DE NOMES E PROFISSOES"
   do i = 1, MAX
     print *, "Nome: "
     read *, nome(i)
     print *, "Profissao: "
     read *, profissao(i)
     print *, ""
   end do

   dentistas = 0

   print *, ""
   print *, "NOME                  PROFISSAO"
   do i = 1, MAX
     print *, nome(i), "       ", profissao(i)
     if (profissao(i) == "Dentista") then
       dentistas = dentistas + 1
     end if
   end do

   print *, ""
   print *, "Total de Dentistas: ", dentistas
end program projeto0057