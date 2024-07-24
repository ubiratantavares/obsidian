program seno
    implicit none
    integer, parameter :: n = 1000
    real, dimension(n) :: xs, ys

    ! gerando dados para a função y = sin(x)
    call gerar_coordenadas(n, xs, ys)

    ! escrevendo dados em arquivo
    call salvar_coordenadas('seno.txt', n, xs, ys)

    print *, "Coordenadas persistidas no arquivo seno.txt."

contains    
    subroutine gerar_coordenadas(n, xs, ys)
        integer, intent(in) :: n
        real, dimension(n), intent(out) :: xs, ys
        integer :: i
        real :: x, y
        do i = 1, n
            x =  2.0 * 3.14159 * real(i - 1) / real(n)
            y = sin(x)
            xs(i) = x
            ys(i) = y
        end do
    end subroutine gerar_coordenadas

    subroutine salvar_coordenadas(filename, n, xs, ys)
        character(len=*), intent(in) :: filename
        integer, intent(in) :: n
        real, dimension(n), intent(in) :: xs, ys
        integer :: i
        integer :: unit
        open (unit=unit, file=filename, status='replace')
        do i = 1, n
            write(unit, *) xs(i), ys(i)
        end do
        close(unit)

    end subroutine salvar_coordenadas
end program seno
