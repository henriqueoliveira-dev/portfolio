"""Calculadora com condições

Material extraído do notebook 3_EstruturasdeProgramacao.ipynb.
"""

# Observação: Adicionada validação para evitar divisão por zero.

nume1 = float(input("Digite o primeiro número: "))
nume2 = float(input("Digite o segundo número: "))
operacao = input("Digite a operação: ")

if (operacao == "+"):
  soma = nume1 + nume2
  print("A soma é: ", soma)
elif (operacao == "-"):
  subtracao = nume1 - nume2
  print("A subtração é ", subtracao)
elif (operacao == "*"):
  multiplicacao = nume1 * nume2
  print("A multiplicação é ", multiplicacao)
elif (operacao == "/"):
  if nume2 == 0:
    print("Não é possível dividir por zero!")
  else:
    divisao = nume1 / nume2
    print("A divisão é ", divisao)
else:
  print("Operação Inválida!")
