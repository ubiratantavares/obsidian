# -*- coding: utf-8 -*-
"""
Created on Wed Jan 22 21:48:03 2020

@author: natar
"""
import numpy as np
import matplotlib.pyplot as plt

xi = np.array([0, 1, 2, 3], dtype = 'double')  

yi = np.array([1, 6, 5, -8], dtype = 'double')  

A = np.array([xi**3, xi**2, xi**1, xi**0]).transpose()  

a = np.linalg.inv(A).dot(yi)

xx = np.linspace(-0.5, 3.25);  

plt.plot(xi, yi, 'ro', xx, np.polyval(a,xx), 'b-')  

plt.grid()

plt.show()