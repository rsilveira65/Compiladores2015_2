#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Author: rsilveira


arq = open('saida.txt')

pilha = []
print "______________________________"
print "\nINICIANDO MÁQUINA VIRTUAL"
print "______________________________\n"
while True:
	aux = arq.readline()
	print aux
	if aux == 'PRINT':
		print pilha.pop()
		exit(1)

	elif aux == 'SUM\n':
		y = pilha.pop()
		x = pilha.pop()
		pilha.append(x+y)

	elif aux == 'SUB\n':
		y = pilha.pop()
		x = pilha.pop()
		pilha.append(x-y)

	elif aux == 'MULT\n':
		y = pilha.pop()
		x = pilha.pop()
		pilha.append(x*y)

	elif aux == 'DIV\n':
		y = pilha.pop()
		x = pilha.pop()
		pilha.append(x/y)

	else:
		na, var = aux.split(' ')
		#print aux
		#print na
		pilha.append(float(var))


arq.close()
