"""Par ou ímpar com while

Material extraído do notebook 3_EstruturasdeProgramacao.ipynb.
"""

indice = 10
print("Programa começou")
while (indice >= 2):
  resto = (indice % 2)
  if resto == 0:
    print("O número %d é par" % (indice))
  else:
    print("O numéro %d é impar" % (indice))
  indice -= 1

print("Programa finalizou")
