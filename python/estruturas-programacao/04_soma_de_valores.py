"""Soma de cinco valores

Material extraído do notebook 3_EstruturasdeProgramacao.ipynb.
"""

soma = 0
numeros_lidos = 0

while (numeros_lidos < 5):
  num_str = input("Digite um valor: ")
  num_lido = float(num_str)
  soma += num_lido
  numeros_lidos += 1

print("Soma é %.2f " % (soma))
