"""Calcular fatorial

Material extraído do notebook 3_EstruturasdeProgramacao.ipynb.
"""

fatorial_str = input("Digite o fatorial desejando:")
fatorial_numero = int(fatorial_str)
resultado = 1

for i in range(1, fatorial_numero+1):
  resultado *= i

print("O fatorial de %d é %d " % (fatorial_numero, resultado))
