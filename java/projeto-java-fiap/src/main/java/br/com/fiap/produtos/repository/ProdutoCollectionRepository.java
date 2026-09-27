package br.com.fiap.produtos.repository;

import br.com.fiap.produtos.model.Categoria;
import br.com.fiap.produtos.model.Produto;

import javax.swing.JOptionPane;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Vector;

public class ProdutoCollectionRepository {

    private static List<Produto> produtos;

    static {
        produtos = new Vector<>();

        Produto celular = new Produto();

        celular.setNome("Iphone 14 Pro Max")
                .setDescrição("Aparelho Celular da apple")
                .setCategoria(CategoriaCollectionRepository.findById(2L))
                .setDataDeCadastro(LocalDateTime.now())
                .setPreço(BigDecimal.valueOf(12000));

        save(celular);

    }

    public static List<Produto> findAll() {
        return produtos;
    }

    public static Produto findById(long id) {
        return produtos.stream()
                .filter(produto -> produto.getId() == id)
                .findFirst()
                .orElse(null);
    }

    public static List<Produto> findByNome(String nome) {
        return produtos.stream()
                .filter(produto -> produto.getNome() != null && produto.getNome().equalsIgnoreCase(nome))
                .toList();
    }

    public static List<Produto> findByCategoria(Categoria categoria) {
        return produtos.stream()
                .filter(produto -> produto.getCategoria() != null && produto.getCategoria().equals(categoria))
                .toList();
    }

    public static Produto save(Produto produto) {
        if (findByNome(produto.getNome()).isEmpty()) {
            produto.setId((long) produtos.size() + 1);
            produtos.add(produto);

            return produto;
        } else {
            JOptionPane.showInternalMessageDialog(null, "Ja existe produto cadastrado com o mesmo nome");
            return null;
        }
    }

}
