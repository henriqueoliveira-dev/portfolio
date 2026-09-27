"""Operadores aritméticos."""

print(10 + 20)

numero = 10 + 10.5
print(numero)

outro_numero = 30 + numero
print(outro_numero)

numero = 20 -10
print(numero)

numero = 10 * 2
print(numero)

numero = 10 / 3
print(numero)

numero = 10 // 3
print(numero)

numero = 2 ** 4
print(numero)

numero = 4 % 3
print(numero)

nume1 = 10 * 2 + 1
print(nume1)

nume1 = 10 * (2 + 1)
print(nume1)

nume1 = 3 * 3 - 9
print(nume1)

nume1 = 3 * (3 - 9)
print(nume1)

nume1 = 20
nume2 = 40
nume3 = 60
resultado = nume1 + nume2 + nume3
print(resultado)

resultado = resultado * 2
print(resultado)

a = 1
a += 1
print(a)

# 1 - Crie um programa que possui duas variáveis, uma recebe o ano
# em que estamos e a outra o ano em que você nasceu.
# Em seguida subtraia ambas para receber uma estimativa de quantos anos você tem.
# Mostre esse valor na saída do programa.

ano_atual = 2022
ano_nascimento = 1998
estimativa_idade = ano_atual - ano_nascimento
print("Devo ter em torno de %d anos" % (estimativa_idade))

# 2 - Crie um programa que faz a média aritmética entre três números.
# Estes números devem ser salvos em uma variável.
# Mostre esse valor na saída do programa.

num1 = 10
num2 = 15
num3 = 6
media = (num1 + num2 + num3) / 3
print("A média é %f " % (media))

# 3 - Crie um programa que calcule o IMC (índice de massa corporal).
# O IMC é dado pelo peso em KG divido pela altura em metros elevado ao quadrado.
# Salvar esses valores em uma variável. Mostre esse valor na saída do programa.

peso = 80.5
altura = 1.72
imc = peso // altura ** 2
print('O IMC é ', imc)

# 4 (Desafio) - Você tem um determinado números de ovos de páscoa para dividir
# entre um determinado número de pessoas (duas variáveis iniciais).
# Determine quantos ovos ficarão por pessoa e quantos ovos sobrarão
# pois não puderam ser divido igualmente.
# Lembre que o número de ovos por pessoa é um número inteiro

ovos = 56
pessoas = 3
print("Tenho inicialmente %d ovos para %d pessoas " % (ovos, pessoas))
ovos_por_pessoas = ovos // pessoas
ovos_restantes = ovos % pessoas
print("Cada uma das %d pessoas terá %d ovo(s) " % (pessoas, ovos_por_pessoas))
print("Restou %d ovo(s) que não puderam ser divididos" % (ovos_restantes))
