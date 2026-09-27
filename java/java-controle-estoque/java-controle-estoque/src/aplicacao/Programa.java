package aplicacao;

import java.util.Scanner;

public class Programa {

    public static void main(String[] args) {

        Scanner teclado = new Scanner(System.in);

        Produto produto = new Produto();

        System.out.println("Digite as informações do produto:");

        System.out.println("Produto:");
        produto.nome = teclado.next();

        System.out.println("Preço:");
        produto.preco = teclado.nextDouble();

        System.out.println("Quantidade em estoque:");
        produto.quantidade = teclado.nextInt();
        
        
        System.out.println(
            "Confirmação: " + produto.nome +
            ", Preço unit.: R$ " + produto.preco +
            " Estoque atual: " + produto.quantidade+ 
            "Total em R$");
        System.out.printf("%.2f",produto.quantidade*produto.preco);
        System.out.println("");
        
        //adicionar produtos
        System.out.println("Deseja acrescentar produtos ao estoque:");
        int quantidade = teclado.nextInt();
        produto.addProduto(quantidade);
        
        System.out.println(
                "Atualização após a inserção: " + produto.nome +
                ", preço atual: R$ " + produto.preco +
                " e o estoque atual é: " + produto.quantidade+ "Total em R$");
        System.out.printf("%.2f",produto.quantidade*produto.preco);
        System.out.println("");
        
        
        
        //remover produtos
        System.out.println("Quantidade a remover do estoque:");
        quantidade = teclado.nextInt();
        produto.removeProduto(quantidade);
        
        System.out.println(
                "Atualização após a remoção: " + produto.nome +
                ", preço atual: R$ " + produto.preco +
                " e o estoque atual é: " + produto.quantidade+ "Total em R$");
        System.out.printf("%.2f",produto.quantidade*produto.preco);
        System.out.println("");
        
        
        teclado.close();
    }
}
