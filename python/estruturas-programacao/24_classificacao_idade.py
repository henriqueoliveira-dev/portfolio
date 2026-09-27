"""Classificação de idade

Material extraído do notebook 3_EstruturasdeProgramacao.ipynb.
"""

# Observação: Corrigida a ordem das condições para que as faixas etárias sejam avaliadas corretamente.

idade = int(input("Digite sua idade: "))
if idade < 0:
  print("Idade inválida!")
elif idade <= 3:
  print("Você é um bebê!")
elif idade <= 13:
  print("Você é uma criança!")
elif idade <= 18:
  print("Você é um adolescente!")
elif idade <= 65:
  print("Você é um adulto!")
else:
  print("Você é uma pessoa idosa!")
