program projeto0036
	real :: saldo, valor
    logical :: acabou
    integer :: codigo

    acabou = .false.

	print *, "Entre com o saldo anterior: "
    read *, saldo
    do while (.not. acabou)
        codigo = 1
		do while ((codigo /= 0) .and. (codigo /= 10) .and. (codigo /= 33) .and. (codigo /= 4)) 
        	print *, ""
     		print *, "Operacao Bancaria"
     		print *, ""
     		print *, "Saque em dinheiro - (codigo: 10)"
     		print *, "Deposito - (codigo: 33)"
        	print *, "Pagamento com cheque - (codigo: 4)"
        	print *, "Fechar sistema - (codigo: 0)"
            print *, "Digite codigo da operacao"
        	read *, codigo
            if ((codigo /= 0) .and. (codigo /= 10) .and. (codigo /= 33) .and. (codigo /= 4)) then
            	print *, "Codigo inválido!"
            end if
        enddo        
        if (codigo == 0) then
			acabou = .true.
        else 
          	print *, "Digite o valor: ",
            read *, valor
            if (codigo == 10) then
              saldo = saldo - valor
            else if (codigo == 33) then
              saldo = saldo + valor
            else
              saldo = saldo - valor - 0.5
            end if
            if (saldo < 0) then
              print *, "Saldo negativo."
            end if
        endif
    enddo
    print *, "Saldo atual: ", saldo
end program projeto0036