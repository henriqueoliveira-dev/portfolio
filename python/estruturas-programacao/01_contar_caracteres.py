"""Contar caracteres sem len

Material extraído do notebook 3_EstruturasdeProgramacao.ipynb.
"""

texto = input("Digite um texto:")
num_caracteres = 0

for letra in texto:
  if (letra != " "):
    num_caracteres += 1

print("Tem %d caracteres no texto: " % (num_caracteres))
