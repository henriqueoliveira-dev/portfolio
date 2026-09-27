algoritmo "aprovacao_aluno"

// Função : Verificar se a pessoa está aprovada ou não
// Autor : Henrique Oliveira
// Data : 21/08/2026

// Seção de Declarações
var

estudante: caracter
nota1: real
nota2: real
media: real
presencas: inteiro

inicio

// Seção de Comandos

escreval("Digite o nome do(a) estudante:")
leia(estudante)

escreval("Insira a primeira nota:")
leia(nota1)

escreval("Insira a segunda nota:")
leia(nota2)

escreval("Digite a frequência do(a) aluno(a) em porcentagem:")
leia(presencas)

media <- (nota1 + nota2) / 2

escreval("Resultado: ", media)
escreval("Frequência: ", presencas, "%")

SE (media >= 7) E (presencas >= 80) ENTAO

    escreval("Parabéns, ", estudante, "! Você foi aprovado(a)!")

SENAO

    escreval("Infelizmente, ", estudante, ", você foi reprovado(a)!")

FIMSE

fimalgoritmo
