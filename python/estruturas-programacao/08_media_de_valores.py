"""Média de cinco valores

Material extraído do notebook 3_EstruturasdeProgramacao.ipynb.
"""

soma_atual = 0
numeros_lidos = 0

while (numeros_lidos < 5):
  num_str = input("Digite um valor: ")
  num_lido = float(num_str)
  soma_atual += num_lido
  numeros_lidos += 1

media = soma_atual  / 5
print("A média é %.2f " % (media))
