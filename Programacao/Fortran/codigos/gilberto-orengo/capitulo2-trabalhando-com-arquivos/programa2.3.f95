! Programa 2.3 - Exemplo do uso de unidades logicas

program unidade1
	implicit none
    integer :: a, b, ue
    write(*,*) "Digite um numero inteiro: "
    read(*,*) a
    b = 10 * a
    write(*,*) "Informe o numero (>8) da unidade logica de saida: "
    read(*,*) ue
    open(unit=ue, file="saida1.txt")
    write(ue,*) b
	close(ue)
end program unidade1
