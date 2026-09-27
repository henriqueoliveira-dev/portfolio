"""Soma de quantidade definida pelo usuário

Material extraído do notebook 3_EstruturasdeProgramacao.ipynb.
"""

# Observação: Corrigido float para int na quantidade de repetições.

numeros_que_devem_ser_lidos = int(input("Digite quantos números serão lidos: "))

soma_atual = 0
numeros_lidos = 0

while (numeros_lidos < numeros_que_devem_ser_lidos):
  num_str = input("Digite um valor: ")
  num_lido = float(num_str)
  soma_atual += num_lido
  numeros_lidos += 1

print("O total é %.2f " % (soma_atual))
