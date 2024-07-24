!
! Este programa calcula a �rea da base e o volumede uma caixa
! de dimens�es quaisquer
!
PROGRAM caixa
    IMPLICIT NONE ! Nenhuma declara��o implicita
    ! Defini��o das vari�veis
    REAL :: largura, comprimento, altura , area_base, volume
 
    ! Apresenta��o da finalida de do programa
    WRITE (*, *) "C�lculo da Area da base e do volume de uma caixa:"
    WRITE (*, *)

    ! Leitura das dimens�es da base da caixa
    WRITE (*, *) "Informe as dimens�es da base da caixa &
                 &(largura, comprimento): "
    READ (*, *) largura , comprimento
    WRITE (*, *)
   
    ! C�lculo da �rea da base da caixa
    AREA_BASE = largura * comprimento
   
    ! Leitura da altura da caixa
    WRITE (*, *) "Informe a altura da caixa: "
    READ (*, *) altura
   
    ! C�lculo do volume da caixa
    volume = area_base * altura
   
    ! Impress�o dos resultados
    WRITE (*, *) "Dimens�es da caixa: "
    WRITE (*, *) "     - Largura:     ", largura
    WRITE (*, *) "     - Comprimento: ", comprimento
    WRITE (*, *) "     - Altura:      ", altura
    WRITE (*, *)
    WRITE (*, *) "Area da base da caixa: ", area_base
    WRITE (*, *)
    WRITE (*, *) "Volume da caixa:       ", volume
    STOP
END PROGRAM caixa
   