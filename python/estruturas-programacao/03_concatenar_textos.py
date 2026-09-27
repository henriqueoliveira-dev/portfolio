"""Concatenar textos

Material extraído do notebook 3_EstruturasdeProgramacao.ipynb.
"""

numero_de_leituras = int(input("Digite o número de textos que serão lidos: "))
texto_total = ""
for i in range(numero_de_leituras):
  texto_total += input("Digite o texto: ")

print("Texto completo: ", texto_total)
