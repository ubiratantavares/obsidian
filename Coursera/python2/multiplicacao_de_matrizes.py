# -*- coding: utf-8 -*-

def dimensoes(matriz):
    linha = len(matriz)
    coluna = len(matriz[0])
    dim  = (linha, coluna)
    return dim

def sao_multiplicaveis(matrizA, matrizB):
    dim1 = dimensoes(matrizA)
    dim2 = dimensoes(matrizB)
    if dim1[1] == dim2[0]:
        return True
    else:
        return False    

def mat_mult(matrizA, matrizB):
    matrizC = []
    for linha in range(len(matrizA)):
        matrizC.append([])            
        for coluna in range(len(matrizB[0])):                
            matrizC[linha].append(0)                
            for k in range(len(matrizA[0])):
                matrizC[linha][coluna] += matrizA[linha][k] * matrizB[k][coluna]
    return matrizC

def main():    
    a = [[1, 2, 3], [4, 5, 6]]
    b = [[1, 2], [3, 4], [5, 6]]
    
    if sao_multiplicaveis(a, b):        
        c = mat_mult(a, b)
        print(c)
    else:
        print('As matrizes não são multiplicaveis')
    
if __name__ == '__main__':
    main()