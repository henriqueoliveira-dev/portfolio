"""Uso de continue

Material extraído do notebook 3_EstruturasdeProgramacao.ipynb.
"""

num_atual = 0

while (num_atual < 10):
  num_atual += 1
  if (num_atual ==7):
    continue
  print(num_atual)

print("Encerrou!")
