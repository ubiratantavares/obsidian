program projeto0076
   real P       ! valor a vista do bem
   integer n    ! numero de prestacoes
   real R       ! valor da prestacao
   logical erro
   integer mes  ! mes da ultima prestacao
   integer ano  ! ano da ultima prestacao

   print *, "Entre com o valor do bem: "
   read *, P
   print *, "Entre com o numero de prestacoes: "
   read *, n
   print *, "Entre com o mes da ultima prestacao: "
   read *, mes
   print *, "Entre com o ano da ultima prestacao: "
   read *, ano     
   call calculaPrestacoes(P, n, ano, mes, R, erro)
   if (erro) then
      print *, "Numero excessivo de prestacoes."
   else
      print *, "Valor das prestacoes: ", R
   end if
   
   contains
   subroutine QueDiaEhHoje(dia, mes, ano)
      character(8)  :: date
      character(10) :: time
      character(5)  :: zone
      integer, dimension(8) :: values
      integer, intent(out) :: dia, mes, ano
            
      call date_and_time(date,time,zone,values)
      
	  dia = values(3)
      mes = values(2)
      ano = values(1)
      
   end subroutine QueDiaEhHoje
   
   subroutine calculaPrestacoes(P, n, anoUltimaPrestacao, mesUltimaPrestacao, R, erro)
      integer dia, mes, ano, maximo 
      real, intent(in) :: P
      integer, intent(in) :: n, anoUltimaPrestacao, mesUltimaPrestacao
      real, intent(out) :: R
      logical, intent(out) :: erro

      call QueDiaEhHoje(dia, mes, ano)

      maximo = 12 * (anoUltimaPrestacao - ano) + (mesUltimaPrestacao - mes)
      
      if (n > maximo) then
         erro = .true.
      else
         erro = .false.
         R = P / n
      end if
   end subroutine calculaPrestacoes
end program projeto0076
