"""Par ou ímpar em intervalo

Material extraído do notebook 3_EstruturasdeProgramacao.ipynb.
"""

num_atual =2
while (num_atual <= 10):
  resto = num_atual % 2
  if (resto ==0):
    print("O número %d é par" % (num_atual))
  else:
    print("O número %d é impar" % (num_atual))
  num_atual +=1
