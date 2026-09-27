# 📦 Java — Controle de Estoque

Projeto desenvolvido em **Java** com o objetivo de praticar os fundamentos da **Programação Orientada a Objetos (POO)** por meio de um sistema simples de controle de estoque.

## 🎯 Objetivo

O projeto permite cadastrar um produto e realizar operações básicas de estoque, como:

* Cadastro de produto
* Definição do preço
* Definição da quantidade em estoque
* Adição de produtos ao estoque
* Remoção de produtos do estoque
* Cálculo do valor total do estoque

## 🛠️ Tecnologias utilizadas

* Java
* Eclipse IDE
* Scanner
* Programação Orientada a Objetos

## 📚 Conceitos praticados

Durante o desenvolvimento foram praticados conceitos importantes de Java:

* Classes e objetos
* Atributos
* Métodos
* Construtores
* `new`
* `this`
* Encapsulamento
* Entrada de dados com `Scanner`
* Tipos de dados
* Operadores aritméticos
* Métodos de instância
* Manipulação de objetos

## 📂 Estrutura do projeto

```text
java-controle-estoque/
│
├── src/
│   └── aplicacao/
│       ├── Programa.java
│       └── Produto.java
│
└── README.md
```

### `Programa.java`

Responsável pela execução do programa e pela interação com o usuário através do teclado.

### `Produto.java`

Representa o produto e contém seus atributos e métodos relacionados às operações de estoque.

## ⚙️ Funcionalidades

### Cadastro do produto

O usuário informa:

* Nome
* Preço
* Quantidade inicial em estoque

### Adicionar produtos

O usuário informa uma quantidade e o sistema acrescenta essa quantidade ao estoque.

### Remover produtos

O usuário informa uma quantidade e o sistema remove essa quantidade do estoque.

### Valor total

O sistema calcula o valor total do estoque utilizando:

```text
quantidade × preço
```

## 💻 Exemplo de execução

```text
Digite as informações do produto:

Produto:
Teclado

Preço:
150.00

Quantidade em estoque:
10

Confirmação: Teclado, Preço unit.: R$ 150.00
Estoque atual: 10
Total em R$: 1500.00

Deseja acrescentar produtos ao estoque:
5

Atualização após a inserção:
Teclado, preço atual: R$ 150.00
e o estoque atual é: 15
Total em R$: 2250.00

Quantidade a remover do estoque:
3

Atualização após a remoção:
Teclado, preço atual: R$ 150.00
e o estoque atual é: 12
Total em R$: 1800.00
```

## 🚀 Como executar

1. Clone este repositório.
2. Abra o projeto no Eclipse ou em outra IDE compatível com Java.
3. Execute a classe:

```text
Programa.java
```

4. Informe os dados solicitados pelo sistema.

## 📌 Próximos passos

Este projeto faz parte do meu processo de aprendizado em Java.

Possíveis melhorias futuras:

* Implementar encapsulamento com `private`
* Criar getters e setters
* Utilizar construtores
* Adicionar validações
* Permitir cadastrar vários produtos
* Utilizar `ArrayList`
* Criar um menu de opções
* Implementar persistência dos dados
* Separar melhor as responsabilidades das classes

## 👨‍💻 Sobre o projeto

Projeto desenvolvido para praticar **Java e Programação Orientada a Objetos**, evoluindo gradualmente de exercícios simples para aplicações mais completas.

---

**Java • POO • Controle de Estoque**
