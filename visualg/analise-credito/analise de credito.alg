algoritmo "Análise de Crédito"
// Função : Realizar uma análise de crédito com base na renda,
// idade, valor solicitado, número de parcelas,
// restrição no CPF e tempo de trabalho.
// Autor :Henrique Oliveira
// Data : 23/08/2026
// Seção de Declarações 
var
nomeDoCliente: caracter
idade: inteiro
readaMensal: real
valorSolicitado: real
valorParcela: real
numeroDeParcelas: real
restricaoNoCpf: logico
tempodeTrabalho: inteiro caracter

inicio
// Seção de Comandos

escreval ("Digite seu Nome: ")
leia(nomeDoCliente)

escreval ("Digite sua Idade: ")
leia(idade)

escreval ("Qual sua Renda Mensal: ")
leia(readaMensal)

escreval ("Qual o Valor Solicitado: ")
leia(valorSolicitado)

escreval ("Qantidade de Parcelas: ")
leia(numeroDeParcelas)

escreval ("Numeros de Parcelas: ")
leia(numeroDeParcelas)


escreval ("Possui restrição no CPF? (sim/nao): ")
leia(restricaoNoCpf)

escreval ("Tempo de Trabalho: ")
leia(tempodeTrabalho)

  valorParcela <-  valorSolicitado /  numeroDeParcelas

   percentualRenda <- (valorParcela / readaMensal) * 100

     se (idade >= 18) e (restricao = "nao") e (percentualRenda <= 30) e (tempoTrabalho >= 12) entao

      escreval("CRÉDITO APROVADO")

      se (idade >= 18) e (restricao = "nao") e (percentualRenda <= 40) entao

   escreval("CREDITO APROVADO COM RESTRICOES")

   se (idade <= 18) e (restricao = "sim") e (parcela > 40) entao
   escreval("CREDITO NEGADO")


     fimse
    fimse
 fimse



fimalgoritmo
