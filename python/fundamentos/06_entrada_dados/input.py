"""Entrada de dados com input."""

valor_escrito = input()
print(type(valor_escrito))
print(valor_escrito)

meu_nome = input()
print("Eu me chamo %s " % (meu_nome))

dia = input("Insira o dia: ")
mes = input("Insira o mês: ")
ano = input("Insira o ano: ")
print("A data inserida for %s/%s/%s " % (dia, mes, ano))

entrada_usuario = input("Digite 1 para verdadeiro e 0 para falso: ")
valor_inteiro = int(entrada_usuario)
valor_logico = bool(valor_inteiro)
print("Você escolheu: %s " % valor_logico)
print("ou ainda, você escolheu: %i " % (valor_inteiro))

# 1 - Crie um programa que leia por input dois números e realize
# a divisão entre ambos. Formate o print para mostrar o cálculo completo.

num1 = input("Insira o primeiro número: ")
num2 = input("Insira o segundo número: ")
divisao =  float(num1) / float(num2)
print("%s dividido por %s é %.2f" % (num1, num2, divisao) )

# 2 - Crie um programa que mostre o dia, mês, ano, hora,
# minuto e segundos inseridos pelo usuário. Formate o valor.

dia = input("Insira o dia: ")
mes = input("Insira o mês: ")
ano = input("Insira o ano: ")
hora = input("Insira a hora: ")
minuto = input("Insira o minuto: ")
segundo = input("Insira o segundo: ")
print("%s/%s/%s %s:%s:%s" % (dia, mes, ano, hora, minuto, segundo))
