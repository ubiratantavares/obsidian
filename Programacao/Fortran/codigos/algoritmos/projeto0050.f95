program projeto0050
	integer i, n, chave, posicao
    integer v(10)

    n = 10
    posicao = n + 1

    print *, "Entre com o valor da chave: "
    read *, chave

    print *, ""

    do i = 1, n 
		print *, "Entre com um numero: "
        read *, v(i)
    end do

	do i = 1, n
    	if (v(i) == chave) then
			posicao = i            
        end if
    end do
    print *, ""
    if (posicao == (n + 1)) then
    	print *, "Chave nao encontrada."
    else 
      	print *, "Chave encontrada na posicao ", posicao
    end if    
end program projeto0050