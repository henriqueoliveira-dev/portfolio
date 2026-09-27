"""Atribuição, comparação e combinação de operadores."""

numero = 1
numero = numero + 1
print(numero)

numero = 1
numero += 1
print(numero)

numero = 10
numero = numero / 2
print(numero)

numero = 10
numero /= 2
print(numero)

num = 10
booleana = (num == 10)
print(booleana)

num = 10
booleana = (num != 10)
print(booleana)

num1 = 10
num2 = 20
e_maior = num1 < num2
print(e_maior)

num1 = 21
num2 = 20
e_maior = num1 <= num2
print(e_maior)

num = 11
boolean = num > 0 and num < 10
print(boolean)

#ver. se é tipo float e igual a 10.1. ou 20.2
num = 10.1
boolean = type(num) == float and (num == 10.1 or num == 20.2)
print(boolean)

# 1 - Crie um programa que responda se você foi aprovado numa prova.
# Você somente foi aprovado numa prova se sua média for maior ou igual que 7
# ou se sua nota no exame for maior ou igual a 5. Leia esses valores por input.

media_input = input("Digite sua média nas provas: ")
exame_input = input("Digite sua nota no exame: ")
media_prova = int(media_input)
nota_exame = int(exame_input)
aprovado = (media_prova >=7) or (nota_exame >= 5)
print("Aprovação: ", aprovado)

# 2 - Crie  um programa que diga se a senha esta correta e portanto você tem
# acesso ao sistema. A senha devera ser salva no código, e a tentativa deve ser
# lida por input.

senha_tentativa = input("Digite a senha: ")
senha_padrao = "1234"
print("Senha está correta? ", senha_tentativa == senha_padrao)
