package br.com.fiap.produtos.view;

import javax.swing.JOptionPane;

public class OpcaoView {

    public static Opcao select() {

        Opcao ret = (Opcao) JOptionPane.showInputDialog(
                null, // componente pai. Como não temos será null
                "Selecione uma opção",
                "Menu",
                JOptionPane.QUESTION_MESSAGE,
                null, // icone
                Opcao.values(), // opções
                Opcao.CADASTRAR_PRODUTO
        );

        return ret != null ? ret : Opcao.ENCERRAR_SISTEMA;
    }
}
