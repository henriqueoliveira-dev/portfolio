"""Buscar letra em texto

Material extraído do notebook 3_EstruturasdeProgramacao.ipynb.
"""

letra = input("Digite uma letra: ")

if (len(letra) != 1):
  print("Precisa ter 1 digito!")
else:
  texto = input("Digite um texto: ")
  for i in range(0, len(texto)):
    if letra == texto[i]:
      print("Encontrei a letra %s na posição %d " % (letra, i))
