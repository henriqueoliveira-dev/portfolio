"""Tabuada de divisão

Material extraído do notebook 3_EstruturasdeProgramacao.ipynb.
"""

numero = int(input("Digite a tabuada de divisão desejada: "))
if numero == 0:
  raise ValueError("O divisor não pode ser zero.")
for num in range(1,11):
  print("%d / %d = %f " % (num, numero, num / numero))
