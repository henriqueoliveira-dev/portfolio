package br.com.fiap.produtos.model;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Objects;

public class Produto {
    private long id;

    private String nome;

    private String descrição;

    private BigDecimal preço;

    private LocalDateTime dataDeCadastro;

    private Categoria categoria;

    public Produto() {
    }

    public Produto(long id, String nome, String descrição, BigDecimal preço, LocalDateTime dataDeCadastro, Categoria categoria) {
        this.setId(id);
        this.setNome(nome);
        this.setDescrição(descrição);
        this.setPreço(preço);
        this.setDataDeCadastro(dataDeCadastro);
        this.setCategoria(categoria);
    }

    public Produto(String nome, String descrição, BigDecimal preço, LocalDateTime dataDeCadastro, Categoria categoria) {
        this.setNome(nome);
        this.setDescrição(descrição);
        this.setPreço(preço);
        this.setDataDeCadastro(dataDeCadastro);
        this.setCategoria(categoria);
    }

    public long getId() {
        return id;
    }

    public Produto setId(long id) {
        this.id = id;
        return this;
    }

    public String getNome() {
        return nome;
    }

    public Produto setNome(String nome) {
        this.nome = nome;
        return this;
    }

    public String getDescrição() {
        return descrição;
    }

    public Produto setDescrição(String descrição) {
        this.descrição = descrição;
        return this;
    }

    public BigDecimal getPreço() {
        return preço;
    }

    public Produto setPreço(BigDecimal preço) {
        this.preço = preço;
        return this;
    }

    public LocalDateTime getDataDeCadastro() {
        return dataDeCadastro;
    }

    public Produto setDataDeCadastro(LocalDateTime dataDeCadastro) {
        this.dataDeCadastro = dataDeCadastro;
        return this;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public Produto setCategoria(Categoria categoria) {
        this.categoria = categoria;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        Produto produto = (Produto) o;
        return Objects.equals(nome, produto.nome);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(nome);
    }

    @Override
    public String toString() {

        return nome.toUpperCase();
    }
}
