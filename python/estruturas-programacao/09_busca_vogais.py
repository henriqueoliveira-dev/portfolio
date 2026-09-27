"""Busca de vogais em texto

Material extraído do notebook 3_EstruturasdeProgramacao.ipynb.
"""

nome = input("Digite seu nome: ")
possui_vogal = ("a" in nome) or ("e" in nome) or ("i" in nome) or ("o" in nome) or ("u" in nome) 
if possui_vogal:
  print("Possui alguma vogal")
