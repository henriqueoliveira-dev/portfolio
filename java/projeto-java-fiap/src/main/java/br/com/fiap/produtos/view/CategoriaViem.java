package br.com.fiap.produtos.view;

import br.com.fiap.produtos.model.Categoria;
import br.com.fiap.produtos.repository.CategoriaCollectionRepository;

import javax.swing.*;

public class CategoriaViem {

    public static Categoria select(Categoria categoria) {
        // @formatter: off
        Categoria ret = (Categoria) JOptionPane.showInputDialog(
                null, // componente pai. Como não temos será null
                "Selecione uma Categoria",
                "Menu",
                JOptionPane.QUESTION_MESSAGE,
                null, // icone
                CategoriaCollectionRepository.findAll().toArray(), // opções
                categoria == null ? CategoriaCollectionRepository.findAll().get(0) : categoria);
        return ret;
        // @formatter:on
    }

    public void sucesso() {
        JOptionPane.showMessageDialog(null, "Categoria foi salva com sucesso!");
    }

    public void sucesso(Categoria categoria) {
        JOptionPane.showMessageDialog(null, "Categoria " + categoria.getNome() + " foi salva com sucesso!");
    }

    public static Categoria form() {
        return form(null);
    }

    public static Categoria form(Categoria categoria) {
        String nome = JOptionPane.showInputDialog(null, "Informe o nome da categoria",categoria!=null? categoria.getNome() :"");
        return new Categoria(nome);
    }
}
