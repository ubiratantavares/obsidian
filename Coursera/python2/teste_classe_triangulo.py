# -*- coding: utf-8 -*-
import sys
sys.path.append('G:\coursera\python2')

import triangulos_semelhantes

t1 = triangulos_semelhantes.Triangulo(4, 4, 4)
t2 = triangulos_semelhantes.Triangulo(2, 2, 2)
print(t1.semelhantes(t2))
