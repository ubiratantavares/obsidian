program matrizes

	implicit none

    ! Este programa calcula a soma e o produto de matrizes

	integer :: linhaMatrizA, linhaMatrizB, linhaMatrizC
    integer :: colunaMatrizA, colunaMatrizB, colunaMatrizC
    integer :: linhasMatrizA, linhasMatrizB, linhasMatrizC
    integer :: colunasMatrizA, colunasMatrizB, colunasMatrizC
    integer :: opcao, aux, produto
    logical :: acabou
    
	integer, allocatable, dimension(:,:) :: MatrizA, MatrizB, MatrizC
	
	acabou = .false.

	do while (.not. acabou)
		write(*,*) "1 - soma de duas matrizes"
        write(*,*) "2 - Produto de duas matrizes"
        write(*,*) "3 - Sair do programa"
        write(*,*) "Digite sua opcao: "
        read(*, *) opcao   		

		select case (opcao) 
    		case (1):
    			write(*,*) "Linhas da matriz A: "
    			read(*,*) linhasMatrizA    
				write(*,*) "Colunas da matriz A: "
    			read(*,*) colunasMatrizA       
	   			write(*,*) "Linhas da matriz B: "
    			read(*,*) linhasMatrizB    
				write(*,*) "Colunas da matriz B: "
    			read(*,*) colunasMatrizB   
			
				if ((linhasMatrizA == linhasMatrizB) .and. (colunasMatrizA == colunasMatrizB)) then
                
                	allocate(MatrizA(linhasMatrizA, colunasMatrizA))

                    if (allocated(MatrizA)) then
					    write(*,*) 'Array bidimensional A alocada com sucesso...'
					    write(*,*) "Leitura dos elementos da matriz A"
    				    do linhaMatrizA = 1, linhasMatrizA
        				    do colunaMatrizA = 1, colunasMatrizA
          				 	    write(*,5) linhaMatrizA, colunaMatrizA
                                5 format (2x, "Elemento(", I1, ",", I1,") = ")
          					    read(*, *) MatrizA(linhaMatrizA, colunaMatrizA)
        				    end do
    				    end do                         
                    else
                        write(*,*) 'Array bidimensional nao alocada com sucesso...'
					end if

                    allocate(MatrizB(linhasMatrizB, colunasMatrizB))

					if (allocated(MatrizB)) then
					    write(*,*) 'Array bidimensional B alocada com sucesso...'                        
					    write(*,*) "Leitura dos elementos da matriz B"
    				    do linhaMatrizB = 1, linhasMatrizB
        				    do colunaMatrizB = 1, colunasMatrizB
          					    write(*,10) linhaMatrizB, colunaMatrizB
                                10 format (2x, "Elemento(", I1, ",", I1,") = ")
          					    read(*, *) MatrizB(linhaMatrizB, colunaMatrizB)
        				    end do
    				    end do 					
                    end if
               
               		linhasMatrizC = linhasMatrizA
               	 	colunasMatrizC = colunasMatrizA
                
               		allocate(MatrizC(linhasMatrizC, colunasMatrizC))

					if ((allocated(MatrizC)) .and. (allocated(MatrizA)) .and. (allocated(MatrizC))) then                        
					    write(*,*) 'Array bidimensional C alocada com sucesso...' 
            		    MatrizC = MatrizA + MatrizB 
                    	
                        write(*,*) "A"
     				    do linhaMatrizA = 1, linhasMatrizA
      					    do colunaMatrizA = 1, colunasMatrizA
          					    write(*, 15, advance="no") MatrizA(linhaMatrizA, colunaMatrizA)
                                15 format (I5) 
     				 	    end do
    	  				    write(*,*) ""
	    			    end do  

                     	write(*,*) "B"
         				do linhaMatrizB = 1, linhasMatrizB
      	    				do colunaMatrizB = 1, colunasMatrizB
          	    				write(*, 20, advance="no") MatrizB(linhaMatrizB, colunaMatrizB)
                                20 format (I5)                                
     		    		 	end do
    	  		    		write(*,*) ""
	    		    	end do 

                	    write(*,*) "C = A + B"
        				do linhaMatrizC = 1, linhasMatrizC
         					do colunaMatrizC = 1, colunasMatrizC
            					write(*, 25, advance="no") MatrizC(linhaMatrizC, colunaMatrizC)
                                25 format (I5)
     	    			 	end do
    	  	    			write(*,*) ""
	    		    	end do 
                     
   						deallocate(MatrizA)
                        deallocate(MatrizB)
                        deallocate(MatrizC)
                    end if                            
            	else 
              		write(*,*) "As matrizes A e B possuem dimensoes diferentes"
            	end if

	     	case (2):

    			write(*,*) "Linhas da matriz A: "
    			read(*,*) linhasMatrizA    
				write(*,*) "Colunas da matriz A: "
    			read(*,*) colunasMatrizA       
	   			write(*,*) "Linhas da matriz B: "
    			read(*,*) linhasMatrizB    
				write(*,*) "Colunas da matriz B: "
    			read(*,*) colunasMatrizB   
			
				if (colunasMatrizA == linhasMatrizB) then
                
                	allocate(MatrizA(linhasMatrizA, colunasMatrizA))

                    if (allocated(MatrizA)) then
					    write(*,*) 'Array bidimensional A alocada com sucesso...'
					    write(*,*) "Leitura dos elementos da matriz A"
    				    do linhaMatrizA = 1, linhasMatrizA
        				    do colunaMatrizA = 1, colunasMatrizA
          				 	    write(*,30) linhaMatrizA, colunaMatrizA
                                30 format (2x, "Elemento(", I1, ",", I1,") = ")                               
          					    read(*, *) MatrizA(linhaMatrizA, colunaMatrizA)
        				    end do
    				    end do                         
                    else
                        write(*,*) 'Array bidimensional nao alocada com sucesso...'
					end if

                    allocate(MatrizB(linhasMatrizB, colunasMatrizB))

					if (allocated(MatrizB)) then
					    write(*,*) 'Array bidimensional B alocada com sucesso...'                        
					    write(*,*) "Leitura dos elementos da matriz B"
    				    do linhaMatrizB = 1, linhasMatrizB
        				    do colunaMatrizB = 1, colunasMatrizB
          					    write(*,35) linhaMatrizB, colunaMatrizB
                                35 format (2x, "Elemento(", I1, ",", I1,") = ")
          					    read(*, *) MatrizB(linhaMatrizB, colunaMatrizB)
        				    end do
    				    end do 					
                    end if
               
               		linhasMatrizC = linhasMatrizA
               	 	colunasMatrizC = colunasMatrizB
                
               		allocate(MatrizC(linhasMatrizC, colunasMatrizC))

					if ((allocated(MatrizC)) .and. (allocated(MatrizA)) .and. (allocated(MatrizC))) then                        
					    write(*,*) 'Array bidimensional C alocada com sucesso...' 
            		    
						do linhaMatrizA = 1, linhasMatrizA
                            do colunaMatrizB = 1, colunasMatrizB
                                MatrizC(linhaMatrizA, colunaMatrizB) = 0
                                do aux = 1, colunasMatrizA
                                   produto = MatrizA(linhaMatrizA, aux) * MatrizB(aux, colunaMatrizB)
                                   MatrizC(linhaMatrizA, colunaMatrizB) = MatrizC(linhaMatrizA, colunaMatrizB) + produto
                                end do
                            end do

                        end do
                    	
                        write(*,*) "A"
     				    do linhaMatrizA = 1, linhasMatrizA
      					    do colunaMatrizA = 1, colunasMatrizA
          					    write(*, 40, advance="no") MatrizA(linhaMatrizA, colunaMatrizA)
                                40 format (I5)
     				 	    end do
    	  				    write(*,*) ""
	    			    end do                    


                     	write(*,*) "B"
         				do linhaMatrizB = 1, linhasMatrizB
      	    				do colunaMatrizB = 1, colunasMatrizB
          	    				write(*, 50, advance="no") MatrizB(linhaMatrizB, colunaMatrizB)
                                50 format (I5)
     		    		 	end do
    	  		    		write(*,*) ""
	    		    	end do 

                	    write(*,*) "C = A * B"
        				do linhaMatrizC = 1, linhasMatrizC
         					do colunaMatrizC = 1, colunasMatrizC
            					write(*, 55, advance="no") MatrizC(linhaMatrizC, colunaMatrizC)
                                55 format (I5)
     	    			 	end do
    	  	    			write(*,*) ""
	    		    	end do 

   						deallocate(MatrizA)
                        deallocate(MatrizB)
                        deallocate(MatrizC)
                    end if                            
            	else 
              		write(*,*) "As matrizes A e B possuem dimensoes diferentes"
            	end if

         	case (3):
         		acabou = .true.


        	case default:
        		write(*,*) "Opcao Invalida"
    	end select 
        
 	end do   
end program matrizes