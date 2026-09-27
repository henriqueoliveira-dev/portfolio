"""Identificar números primos

Material extraído do notebook 3_EstruturasdeProgramacao.ipynb.
"""

for numero in range(3,31):
  e_primo = True

  for num_teste in range(2, numero):
    if (numero % num_teste == 0):
      e_primo = False
      break
  
  if (e_primo):
    print("O número %d é primo" % (numero))
  else:
    print("O número %d não é primo " % (numero))
