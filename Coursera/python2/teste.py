# -*- coding: utf-8 -*-
"""
Created on Wed Jan 22 21:41:36 2020

@author: natar
"""


import numpy as np
import scipy.optimize as sp

def funcao(x) :
    return x - np.cos(x)
   
def main():
    sol = sp.newton (funcao, 1.)
    print (sol)
    
    
if __name__ == '__main__':
    main()
