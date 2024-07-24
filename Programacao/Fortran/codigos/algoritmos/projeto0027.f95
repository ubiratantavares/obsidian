program projeto0027
 	character(len = 80) :: nome
    integer :: i, n
    real :: P1, P2, soma, media, mediaTurma
    soma = 0.
    n = 15
    do i = 1, n
    	print *, "Nome: "
        read *, nome
        print *, "Nota 1: "
        read *, P1
        print *, "Nota 2: "
        read *, P2
        media = (P1 + P2) / 2
        soma = soma + media
        print *, "Nome: ", nome
        print *, "Media: ", media
    end do
    mediaTurma = soma / n
    print *, "Media da turma: ", mediaTurma
end program projeto0027