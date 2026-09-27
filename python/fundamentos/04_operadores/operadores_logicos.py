"""Operadores lógicos."""

resultado1 = True and False
print(resultado1)

resultado2 = True and True
print(resultado2)

var1 = True
var2 = True
var3 = False
print(var1 and var2 and var3)

clima_bom = True
estou_disposto = True
vou_ao_mercado = clima_bom and estou_disposto
print("Vou ao mercado? ", vou_ao_mercado)

resultado = True or False
print(resultado)

resultado = True or True
print(resultado)

resultado = False or False
print(resultado)

sei_programar = True
sei_investir = False
ganho_bom_salario = sei_programar or sei_investir
print("Terei um bom salário? ", ganho_bom_salario)

resultado = False
print(not resultado)

porta_aberta = False
tem_chave = False
print("Estou trancado? ", not porta_aberta and not tem_chave)

# Prioridade
# NOT , AND, OR

bool1 = True or False and True
print(bool1)

bool2 = True or not False
print(bool2)

bool3 = True and not (True or False)
print(bool3)

# 1 - Crie um programa que diga “se você precisar ir ao mercado”.
# Você precisa ir ao mercado se “faltar comida” ou “se for sábado”.
# Mostre na saída do programa o valor lógico, indicando sim ou não.

falta_comida = False
e_sabado = True
vou_ao_mercado = falta_comida or e_sabado
print("Preciso ir ao mercado? ", vou_ao_mercado)

# 2 - Crie um programa que responda “se você pode atravessar a rua”
# na faixa de pedestres. Você pode atravessar a rua se o “sinal estiver
# vermelho” e “se não houver nenhum carro vindo da direita” E “nem da esquerda”.
# Altere as variáveis para verificar se o programa esta correto.
# Mostre na saída do programa o valor lógico.

sinal_vermelho = True
carro_vindo_direita = False
carro_vindo_esquerda = False
pode_atravessar = sinal_vermelho and not carro_vindo_direita and not carro_vindo_esquerda
print("Posso atravessar? ", pode_atravessar)

# 3 - Agora faça a mesma coisa que o exercício anterior, mas desta vez você
# esta com pressa e para atravessar a rua basta que o sinal esteja vermelho
# "OU" que não venha carro da esquerda e direita. Altere as variáveis
# para verificar a resposta em comparação com ao exercício anterior.
# Mostre na saída do programa o valor lógico.

sinal_vermelho = False
carro_vindo_direita = True
carro_vindo_esquerda = True
pode_atravessar = sinal_vermelho or not carro_vindo_direita and not carro_vindo_esquerda
print("Posso atravessar? ", pode_atravessar)
