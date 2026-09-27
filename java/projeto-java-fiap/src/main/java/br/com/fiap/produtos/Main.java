package br.com.fiap.produtos;

import br.com.fiap.produtos.model.Categoria;
import br.com.fiap.produtos.model.Produto;
import br.com.fiap.produtos.repository.CategoriaCollectionRepository;
import br.com.fiap.produtos.repository.ProdutoCollectionRepository;
import br.com.fiap.produtos.view.CategoriaViem;
import br.com.fiap.produtos.view.Opcao;
import br.com.fiap.produtos.view.OpcaoView;
import br.com.fiap.produtos.view.ProdutoView;

import javax.swing.*;
import java.util.List;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {

        Opcao opcao = null;

        do {
            opcao = OpcaoView.select();

            switch (opcao) {
                case CADASTRA_CATEGORIA -> cadastrarCategoria();
                case CADASTRAR_PRODUTO -> cadastrarProduto();
                case ALTERAR_PRODUTO -> alterarProduto();
                case CONSULTAR_PRODUTO_POR_ID -> consultarProdutoPorId();
                case CONSULTAR_POR_CATEGORIA -> consultarProdutoPorCategoria();
                case ENCERRAR_SISTEMA -> encerraSistema();
            }
        } while (opcao != Opcao.ENCERRAR_SISTEMA);

    }

    private static void alterarProduto() {
        Produto produto = ProdutoView.select(null);
        ProdutoView.update(produto);
    }

    private static void encerraSistema() {
        System.exit(0);
    }

    private static void consultarProdutoPorCategoria() {
        Categoria categoria = CategoriaViem.select(null);

        if (categoria == null) {
            return;
        }

        List<Produto> produtos = CategoriaCollectionRepository.findByCategoria(categoria);

        if(produtos.isEmpty()){
            JOptionPane.showInternalMessageDialog(null, "Não encontramos produtos com a categoria: " + categoria.getNome());
        }else{
            produtos.forEach(ProdutoView::show);
            produtos.forEach(System.out::println);
        }

    }

    private static void consultarProdutoPorId() {
        String idInformado = JOptionPane.showInputDialog(null, "Informe o ID do produto");

        if (idInformado == null || idInformado.isBlank()) {
            return;
        }

        try {
            Produto produto = ProdutoCollectionRepository.findById(Long.parseLong(idInformado));

            if (produto == null) {
                JOptionPane.showMessageDialog(null, "Produto não encontrado para o ID: " + idInformado);
            } else {
                ProdutoView.show(produto);
            }
        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "Informe um ID válido.");
        }
    }

    private static void cadastrarProduto() {

        Produto produto = ProdutoView.form(new Produto());
        Produto produtoSalvo = ProdutoCollectionRepository.save(produto);

        if (produtoSalvo != null) {
            ProdutoView.sucesso(produtoSalvo);
        }
    }

    private static void cadastrarCategoria() {
        Categoria categoria = CategoriaViem.form(new Categoria());
        Categoria categoriaSalva = CategoriaCollectionRepository.save(categoria);

        if (categoriaSalva != null) {
            CategoriaViem view = new CategoriaViem();
            view.sucesso(categoriaSalva);
        }
    }

}
