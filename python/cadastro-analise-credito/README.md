# 💳 Sistema de Cadastro e Análise de Crédito

Aplicação desktop desenvolvida em **Python** para cadastro, gerenciamento e análise de informações de clientes, com **integração ao banco de dados MySQL** e geração de relatórios em diferentes formatos.

O sistema possui interface gráfica desenvolvida com **PyQt5 e Qt Designer**, permitindo cadastrar, consultar, editar e excluir informações, além de gerar relatórios e exportar os dados.

---

## 🚀 Sobre o Projeto

O **Cadastro e Análise de Crédito** é uma aplicação desktop desenvolvida em Python, utilizando **PyQt5** para construção da interface gráfica e **MySQL** para armazenamento dos dados.

O sistema foi desenvolvido com foco na criação de uma aplicação funcional, permitindo o gerenciamento dos registros através de uma interface gráfica.

A aplicação também possui uma área de **relatórios**, onde é possível visualizar os dados cadastrados, editar ou excluir registros e exportar as informações para diferentes formatos.

---

## 🛠️ Tecnologias Utilizadas

* 🐍 **Python**
* 🖥️ **PyQt5**
* 🎨 **Qt Designer**
* 🗄️ **MySQL**
* 🔌 **MySQL Connector**
* 📦 **PyInstaller**
* 📄 **PDF**
* 📊 **CSV**
* 📗 **Excel**
* 💻 **Windows**

---

## 📋 Funcionalidades

### 👤 Cadastro

* Cadastro de clientes
* Registro das informações necessárias para análise de crédito
* Armazenamento das informações no banco de dados MySQL

### 🔎 Consulta e Gerenciamento

* Consulta dos registros cadastrados
* Visualização das informações através da interface gráfica
* ✏️ Edição de registros
* 🗑️ Exclusão de registros

### 📊 Relatórios

O sistema possui uma tela específica para gerenciamento e geração de relatórios.

Através dela é possível:

* Visualizar os registros cadastrados
* Editar registros
* Excluir registros
* Gerar relatório em **PDF**
* Exportar dados para **CSV**
* Exportar dados para **Excel**

---

## 🗄️ Integração com MySQL

O sistema possui integração com **MySQL**, utilizado como banco de dados para armazenar e consultar as informações da aplicação.

A comunicação entre o Python e o MySQL é realizada através do **MySQL Connector**.

Essa integração permite que os dados cadastrados permaneçam armazenados no banco de dados e possam ser posteriormente consultados, editados, excluídos ou utilizados na geração dos relatórios.

> ⚠️ Informações sensíveis, como usuário e senha do banco de dados, não devem ser publicadas no GitHub.

---

## 📄 Exportação de Relatórios

Uma das funcionalidades do sistema é a possibilidade de exportar os dados cadastrados para diferentes formatos.

### PDF

Permite gerar uma versão do relatório adequada para visualização e impressão.

### CSV

Permite exportar os dados em formato tabular, facilitando a utilização em outras ferramentas.

### Excel

Permite exportar os registros para planilhas do Excel, facilitando análises e manipulação dos dados.

---

## 🖥️ Interface Gráfica

A interface foi desenvolvida utilizando **PyQt5** e **Qt Designer**.

O projeto utiliza arquivos `.ui` para definir as interfaces das telas:

```text
cadastro.ui
editar.ui
relatorio.ui
```

A tela de relatório concentra funcionalidades importantes de gerenciamento dos dados, incluindo **editar, excluir e exportar informações**.

---

## 📁 Estrutura do Projeto

```text
Cadastro/
│
├── controle.py
├── cadastro.ui
├── editar.ui
├── relatorio.ui
├── controle.spec
├── README.md
│
├── Interface Imagem/
│
├── .vscode/
│
├── build/
│
└── dist/
```

### Arquivos principais

| Arquivo         | Função                                  |
| --------------- | --------------------------------------- |
| `controle.py`   | Código principal da aplicação           |
| `cadastro.ui`   | Interface da tela de cadastro           |
| `editar.ui`     | Interface para edição dos registros     |
| `relatorio.ui`  | Interface de relatórios e gerenciamento |
| `controle.spec` | Configuração utilizada pelo PyInstaller |
| `README.md`     | Documentação do projeto                 |

---

## ⚙️ Instalação

Clone o projeto:

```bash
git clone https://github.com/SEU-USUARIO/cadastro-analise-credito-python.git
```

Entre na pasta:

```bash
cd cadastro-analise-credito-python
```

Crie um ambiente virtual:

```bash
python -m venv venv
```

Ative o ambiente virtual no Windows:

```powershell
venv\Scripts\activate
```

Instale as dependências:

```bash
pip install PyQt5 mysql-connector-python
```

---

## ▶️ Executando

Com o ambiente virtual ativado:

```bash
python controle.py
```

Para utilizar as funcionalidades que dependem do banco de dados, é necessário possuir o **MySQL** instalado e configurado.

---

## 📦 Executável para Windows

O projeto utiliza **PyInstaller** para gerar uma versão executável da aplicação.

O arquivo:

```text
controle.spec
```

contém as configurações utilizadas no processo de geração do executável.

A compilação pode ser realizada com:

```bash
pyinstaller controle.spec
```

Os arquivos gerados pelo processo de compilação ficam nas pastas:

```text
build/
dist/
```

Essas pastas são geradas automaticamente e não fazem parte do código-fonte principal.

---

## 🎯 Objetivos do Projeto

Este projeto foi desenvolvido para colocar em prática conhecimentos de:

* Programação em Python
* Desenvolvimento de aplicações desktop
* PyQt5
* Qt Designer
* Integração Python + MySQL
* Operações de cadastro e gerenciamento de dados
* Geração de relatórios
* Exportação de dados
* Manipulação de arquivos PDF, CSV e Excel
* PyInstaller
* Organização de projetos
* Git e GitHub

---

## 📚 Projeto de Portfólio

Este projeto faz parte do meu **portfólio de desenvolvimento**, demonstrando a aplicação prática de conhecimentos em **Python, banco de dados, interfaces gráficas e desenvolvimento de sistemas**.

O projeto também representa uma aplicação completa, envolvendo desde o cadastro e armazenamento das informações até o gerenciamento, consulta e exportação dos dados.

---

## 👨‍💻 Autor

**Henrique Oliveira**

Desenvolvedor em formação, com interesse e estudos direcionados para:

* 🐍 Python
* ☕ Java
* 🗄️ Banco de Dados
* 🐧 Linux
* ⚙️ Automação
* 🔧 Backend
* 🏭 Desenvolvimento de Sistemas

---

## 📌 Status

🟢 **Projeto funcional e em evolução**

O projeto poderá receber novas funcionalidades, melhorias de interface, aprimoramentos de segurança e evolução da arquitetura da aplicação.
