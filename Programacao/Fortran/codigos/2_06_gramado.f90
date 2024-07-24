!
! Programa que calcula a �rea de um gramado de uma pra�a que cont�m:
!       - forma retangular
!       - uma quadra de esportes retangular
!       - um lago circular
!       - uma cal�ada em torno do gramado
!
PROGRAM gramado
   IMPLICIT NONE
   ! DEFINI��O DAS VARI�VEIS
   REAL :: largura_praca, comprimento_praca, largura_calcada, largura_quadra
   REAL :: comprimento_quadra, diametro_lago, areaLago, areaQuadra, areaCalcada
   REAL :: areaPraca, areaGramado
 
   ! LEITURA DAS MEDIDAS A SEREM INFORMADAS
   WRITE (*, *) "Calculo da �rea do gramado de uma pra�a que cont�m:"
   WRITE (*, *) "       - forma retangular"
   WRITE (*, *) "       - uma quadra de esportes retangular"
   WRITE (*, *) "       - um lago circular"
   WRITE (*, *) "       - uma cal�ada em torno do gramado"
   WRITE (*, *)
   ! Leitura dos dados da pra�a
   WRITE (*, *) "Informe a largura da pra�a: "
   READ (*, *) largura_praca
   WRITE (*, *) "Informe o comprimento da pra�a: "
   READ (*, *) comprimento_praca
   WRITE (*, *) "Informe a largura da cal�ada: "
   READ (*, *) largura_calcada
   WRITE (*, *) "Informe a largura da quadra: "
   READ (*, *) largura_quadra
   WRITE (*, *) "Informe o comprimento da quadra: "
   READ (*, *) comprimento_quadra
   WRITE (*, *) "Informe o diametro do lago: "
   READ (*, *) diametro_lago
 
   ! C�lculos
   areaPraca = largura_praca * comprimento_praca
   areaCalcada = largura_calcada * (2 * (comprimento_praca + (largura_praca - 2 * largura_calcada)))
   areaQuadra = largura_quadra * comprimento_quadra
   areaLago = 3.14159 * (diametro_lago/2) ** 2
   areaGramado = areaPraca - areaCalcada - areaQuadra - areaLago
 
   ! Impress�o dos resultados
   WRITE (*, *) "Areas calculadas:"
   WRITE (*, *)
   WRITE (*, *) "Area da Praca:  ", areaPraca
   WRITE (*, *) "Area da Calcada:", areaCalcada
   WRITE (*, *) "Area da Quadra: ", areaQuadra
   WRITE (*, *) "Area do Lago:   ", areaLago
   WRITE (*, *)
   WRITE (*, *) "Area do Gramado:", areaGramado
   STOP
   END PROGRAM gramado
   
