!
! Quest�o 06 da Lista 05 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program media_maior_menor
    implicit none
    real :: media_final, maior = 0, menor = 10, soma = 0, media
    integer :: conta_medias = 0
    
    write(*, *) "L� as m�dias finais de v�rios alunos de uma turma e mostra a maior m�dia,"
    write(*, *) "a menor m�dia e a m�dia aritm�tica da turma."
    write(*, *) "O programa p�ra quando encontra uma m�dia negativa:"
    write(*, *)
    write(*, *) "Informe a media de um aluno:"
    read(*, *) media_final
    do while (media_final >= 0)
        if (media_final > maior) then
            maior = media_final
        end if
        if (media_final < menor) then
            menor = media_final
        end if
        soma = soma + media_final
        conta_medias = conta_medias + 1
        write(*, *) "Informe a media de um aluno:"
        read(*, *) media_final
    end do
    if (conta_medias > 0) then
        media = soma / conta_medias
        write(*, *)
        write(*, *) "A maior media foi:", maior
        write(*, *) "A menor media foi:", menor
        write(*, *) "A media aritmetica foi:", media
    else
        write(*, *) "Nao foi digitada nenhuma media!"
    end if
    stop
end program media_maior_menor

