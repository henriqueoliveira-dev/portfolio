"""Operações e fatiamento de strings."""

texto1 = "olá"
texto2 = ", "
texto3 = "tudo bem?"
texto_completo = texto1 + texto2 + texto3
print(texto_completo)

texto1 = "olá"
texto1 += " mundo"
print(texto1)

texto = "Python é bem produtivo,"
texto_repetido = texto * 3
print(texto_repetido)

texto = "exemplo"
print(texto[0])
print(texto[1])

texto = "exemplo"
print(texto[1:4])
print(texto[3:])
print(texto[:5])

texto = "carro"
print(texto[-4])
print(texto[-4:])
print(texto[:-1])
print(texto[-5:-2])

texto = "metro"
print(texto[::-1])
print(texto[3::-1])
print(texto[3:1:-1])

texto = "023"
texto = "1" + texto[1:]
print(texto)

texto = "abcdefg"
texto = texto[:3] + texto[4:]
print(texto)

texto1 = "Olá"
texto2 = "Olá"
igual = texto1 == texto2
print("Textos são iguais? ", igual)

print("a" != "b")

texto = "Programação"
print("a" in texto)
print("e" in texto)
print("Programa" in texto)
print("Programa" not in texto)
print("Vinte" not in texto)

tamanho = len(texto)
print(tamanho)

# 1 - Crie um única string que contêm seu nome e sobrenome, em seguida use o
# slicing para separar o nome em uma variável e o seu sobrenome em outra.
# Printe esses valores.

nome_completo = "Carlos Silva"
nome = nome_completo[:6]
sobrenome = nome_completo[7:]
print("Nome: ", nome)
print("Sobrenome", sobrenome)

# 2 - Leia uma string através do input e retire o ultimo caractere.
string = input("Digite um texto qualquer: ")
string = string[:-1]
print(string)

# 3 - Faça um programa que leia uma string através do input e diga se
# ela possui uma vogal.

texto = input("Digite uma palavra: ")
possui_vogal = ("a" in texto) or ("e" in texto) or ("i" in texto) or ("o" in texto)  or   ("u" in texto)
print("Possui vogal? ", possui_vogal)

# 4 - Faça um programa que insira a palavra 'ABC' na primeira posição
# de uma string lida por input.

texto = input("Digite uma palavra: ")
texto = "ABC" + texto[0:]
print(texto)
