! Programa 3.5 - Exemplo de estrutura por selecao direta

program clima_temp
	implicit none
    integer :: temp_c

    write(*,*) 'Informe a temperatura ambiente, em Celsius: '
    read(*,*) temp_c

    select case (temp_c)
		case (:-1)
			write(*,*) 'Hoje esta muito frio'
        case (0)
			write(*,*) 'Temperatura de gelo da agua'
        case (1:20)
			write(*,*) 'Hoje esta frio, mas suportavel'
        case (21:25)
			write(*,*) 'Hoje o clima esta agradavel'
        case (26:35)
			write(*,*) 'Hoje esta quente'
        case default
			write(*,*) 'Hoje o dia esta muito quente'
    end select
end program clima_temp