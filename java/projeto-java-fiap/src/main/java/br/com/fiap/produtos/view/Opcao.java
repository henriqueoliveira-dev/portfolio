package br.com.fiap.produtos.view;

public enum Opcao {

    CADASTRA_CATEGORIA(1, "Cadastrar Categoria"),
    CADASTRAR_PRODUTO(2, "Cadastrar Produto"),
    ALTERAR_PRODUTO(3, "Alterar Produto"),
    CONSULTAR_PRODUTO_POR_ID(4, "Consultar Produto Por ID"),
    CONSULTAR_POR_CATEGORIA(5, "Consultar Produto Por Categoria"),
    ENCERRAR_SISTEMA(6, "Encerrar o Sistema");

    int id;
    String nome;

    Opcao(int id, String nome) {
        this.id = id;
        this.nome = nome;
    }

    public int getId() {
        return id;
    }

    public Opcao setId(int id) {
        this.id = id;
        return this;
    }

    public String getNome() {
        return nome;
    }

    public Opcao setNome(String nome) {
        this.nome = nome;
        return this;
    }

    @Override
    public String toString() {
        return nome.toUpperCase();
    }
}
