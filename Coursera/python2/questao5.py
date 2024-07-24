# -*- coding: utf-8 -*-
"""
Created on Tue Jan 21 12:31:51 2020

@author: admin
"""

def tarefa(mat):
    dim = len(mat)
    for i in range(dim):
        print(mat[i][dim-1-i], end="  ")

mat = [[1,2,3],[4,5,6],[7,8,9]]
tarefa(mat)

print(tarefa)