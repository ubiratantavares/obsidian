# -*- coding: utf-8 -*-

import matriz

def soma_matrizes(a, b):
    num_lin = len(a)
    num_col = len(a[0])
    c = matriz.cria_matriz(num_lin, num_col, 0)
    
    for i in range(num_lin):
        for j in range(num_col):
            c[i][j] = a[i][j] + b[i][j]
    return c

if __name__ == '__main__':
    a = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    b = [[10, 20, 30], [40, 50, 60], [70, 80, 90]]
    print(soma_matrizes(a, b))
    

