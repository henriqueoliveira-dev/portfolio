"""Contar espaços em um texto

Material extraído do notebook 3_EstruturasdeProgramacao.ipynb.
"""

# Observação: Corrigado o incremento do índice para analisar todos os caracteres.

texto = input("Digite um texto: ")
indice =0
num_vazio =0

while (indice < len(texto)):
  if texto[indice] == " ":
    num_vazio +=1
  indice += 1

print("Número de espaços no texto é de %d " % (num_vazio))
