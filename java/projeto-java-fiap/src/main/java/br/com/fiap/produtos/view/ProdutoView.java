package br.com.fiap.produtos.view;

import br.com.fiap.produtos.model.Categoria;
import br.com.fiap.produtos.model.Produto;
import br.com.fiap.produtos.repository.ProdutoCollectionRepository;

import javax.swing.*;
import java.math.BigDecimal;
import java.time.LocalDateTime;

public class ProdutoView {
    public static Produto form(Produto produto) {

        Categoria categoria;

        do {
            categoria = CategoriaViem.select(produto.getCategoria());
        } while (categoria == null);

        String nome = "";

        do {
            nome = JOptionPane.showInputDialog(null, "Informe o nome do produto", produto.getNome());
        } while (nome == null || nome.equals(""));


        String descricao = "";

        do {
            descricao = JOptionPane.showInputDialog(null, "Informe a descrição do produto" , produto.getDescrição());
        } while (descricao == null || descricao.equals(""));

        BigDecimal preco = BigDecimal.ZERO;

        do {
            try {
                preco = new BigDecimal(JOptionPane.showInputDialog(null, "Informe o preço do produto" , produto.getPreço() ));
            } catch (Exception e) {
                preco = BigDecimal.ZERO;
            }
        } while (preco.equals(BigDecimal.ZERO));

        Produto ret = produto;

        ret.setCategoria(categoria)
                .setNome(nome)
                .setDescrição(descricao)
                .setDataDeCadastro(LocalDateTime.now())
                .setPreço(preco);

        return ret;
    }

    public static void sucesso() {
        JOptionPane.showMessageDialog(null, "Produto foi salvo com sucesso!");
    }

    public static void sucesso(Produto produto) {
        JOptionPane.showMessageDialog(null, "Produto " + produto.getNome() + " foi salvo com sucesso! ID: " + produto.getId());
    }

    public static Produto select(Produto produto) {
        if (ProdutoCollectionRepository.findAll().isEmpty()) {
            JOptionPane.showMessageDialog(null, "Nenhum produto cadastrado.");
            return null;
        }

        // @formatter: off
        Produto ret = (Produto) JOptionPane.showInputDialog(
                null, // componente pai. Como não temos será null
                "Selecione um Produto",
                "Menu",
                JOptionPane.QUESTION_MESSAGE,
                null, // icone
                ProdutoCollectionRepository.findAll().toArray(), // Número de opções
                produto == null ? ProdutoCollectionRepository.findAll().get(0) : produto);
        return ret;
        // @formatter:on
    }

    public static  void update(Produto produto){
        if (produto == null) {
            return;
        }

        form(produto);
        sucesso(produto);
        show(produto);
    }

    public static void show(Produto p) {
        if (p == null) {
            return;
        }

        System.out.println(p);
        String textoFormatado = String.format(
                "ID: " + p.getId()
                        + System.lineSeparator() + "PRODUTO: " + p.getNome()
                        + System.lineSeparator() + "CATEGORIA: " + p.getCategoria()
                        + System.lineSeparator() + "DESCRIÇÃO: " + p.getDescrição()
                        + System.lineSeparator() + "PREÇO: %,.2f",
                p.getPreço());
        JOptionPane.showInternalMessageDialog(null, textoFormatado);
    }

}
