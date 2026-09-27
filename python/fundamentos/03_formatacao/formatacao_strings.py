"""Formatação de textos e números."""

# %s texto
# %d inteiro
# %f real

nome = "Ana"
texto_formatado = "O nome dela é %s " % (nome)
print(texto_formatado)

nome = "Rodrigo"
idade = 23
altura = 1.73
texto = "Meu nome é %s. tenho %d anos e tenho %f metros de altura" % (nome, idade, altura)
print(texto)

numero_gigante = 1.123456789
print("Número gigante formatado: %.2f" % (numero_gigante))

valor = False
print("O valor é %s" % (valor))
print("O valor é %d" % (valor))

decimal = 23.4566
print("A parte inteira é %d" % (decimal))

texto = "Olá, assim se quebra uma linha,\n\tentendeu como quebra a linha?\n\t\tfim"
print(texto)

texto = 'Deixa a \'palavra\' entre aspas'
print(texto)

# 1 - Escreva e formate a data em que você nasceu no formato dia/mês/ano.
# Não esqueça de criar 3 variáveis para guardar o dia, mês e ano.

dia, mes, ano = 4, 12, 1980
data = "Eu nasci em %d/%d/%d" % (dia, mes, ano)
print(data)

# 2 - Escreva e formate a hora e minuto atual.
# Não esqueça de criar duas variáveis para guardar a hora e minuto.

horas = 21
minutos = 53
print("Agora são %d horas e %d minutos" % (horas, minutos))

# 3 - Escreva um programa que contêm o número PI, que deve ter o valor exato
# de 3.14159265359. Agora formate esse número para ter apenas cinco casas decimais.

pi = 3.14159265359
pi_formatado = 'O PI é normalmente exibido com %.5f' % (pi)
print(pi_formatado)
