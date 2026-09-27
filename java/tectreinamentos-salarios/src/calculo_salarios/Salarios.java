package calculo_salarios;

import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.DecimalFormat;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;

public class Salarios extends JFrame {

	private JPanel contentPane;
	private JTextField textSalario;
	private JTextField textPercentual;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Salarios frame = new Salarios();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public Salarios() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 433, 570);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("HM Tecnologia e Desenvolvimento");
		lblNewLabel.setFont(new Font("Arial Black", Font.PLAIN, 15));
		lblNewLabel.setBounds(20, 30, 538, 24);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("Desenvolvimento de sistemas com Java");
		lblNewLabel_1.setForeground(Color.BLUE);
		lblNewLabel_1.setFont(new Font("Arial", Font.ITALIC, 12));
		lblNewLabel_1.setBounds(20, 53, 405, 13);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblNewLabel_2 = new JLabel("Salário");
		lblNewLabel_2.setFont(new Font("Arial", Font.BOLD, 14));
		lblNewLabel_2.setBounds(20, 101, 108, 13);
		contentPane.add(lblNewLabel_2);
		
		JLabel lblNewLabel_3 = new JLabel("Percentual de Desconto");
		lblNewLabel_3.setFont(new Font("Arial", Font.BOLD, 14));
		lblNewLabel_3.setBounds(22, 166, 198, 13);
		contentPane.add(lblNewLabel_3);
		
		JLabel lblNewLabel_3_1 = new JLabel("Resultados");
		lblNewLabel_3_1.setHorizontalAlignment(SwingConstants.CENTER);
		lblNewLabel_3_1.setFont(new Font("Arial", Font.BOLD, 16));
		lblNewLabel_3_1.setBounds(20, 288, 389, 13);
		contentPane.add(lblNewLabel_3_1);
		
		JLabel lblLiquido = new JLabel("");
		lblLiquido.setForeground(Color.BLUE);
		lblLiquido.setFont(new Font("Arial", Font.BOLD, 14));
		lblLiquido.setBounds(20, 336, 387, 13);
		contentPane.add(lblLiquido);
		
		JLabel lblAnual = new JLabel("");
		lblAnual.setForeground(Color.BLUE);
		lblAnual.setFont(new Font("Arial", Font.BOLD, 14));
		lblAnual.setBounds(20, 372, 387, 13);
		contentPane.add(lblAnual);
		
		JLabel lblDecimo = new JLabel("");
		lblDecimo.setForeground(Color.BLUE);
		lblDecimo.setFont(new Font("Arial", Font.BOLD, 14));
		lblDecimo.setBounds(20, 408, 387, 13);
		contentPane.add(lblDecimo);
		
		JLabel lblFerias = new JLabel("");
		lblFerias.setForeground(Color.BLUE);
		lblFerias.setFont(new Font("Arial", Font.BOLD, 14));
		lblFerias.setBounds(20, 440, 387, 13);
		contentPane.add(lblFerias);
		
		JLabel lblNewLabel_1_1 = new JLabel("Desenvolvido por HM Tecnologia | 2026");
		lblNewLabel_1_1.setForeground(Color.BLACK);
		lblNewLabel_1_1.setFont(new Font("Arial", Font.ITALIC, 12));
		lblNewLabel_1_1.setBounds(165, 509, 244, 13);
		contentPane.add(lblNewLabel_1_1);
		
		textSalario = new JTextField();
		textSalario.setFont(new Font("Tahoma", Font.PLAIN, 14));
		textSalario.setBounds(20, 124, 172, 19);
		contentPane.add(textSalario);
		textSalario.setColumns(10);
		
		textPercentual = new JTextField();
		textPercentual.setFont(new Font("Tahoma", Font.PLAIN, 14));
		textPercentual.setColumns(10);
		textPercentual.setBounds(20, 189, 58, 19);
		contentPane.add(textPercentual);
		
		JButton btnCalcular = new JButton("Calcular");
		btnCalcular.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				  
				double salario = Double.parseDouble(textSalario.getText());
				double percentual = Double.parseDouble(textPercentual.getText());
				
				double resultado = salario-(salario/100)*percentual;
				double anual =resultado*12;
				double decimo = resultado;
				double ferias =(salario/3)+resultado;
				
				//formatação dos resultados
				DecimalFormat formato = new DecimalFormat("#0.00");
				String resultadoFormatado = formato.format(resultado);
				String anualFormatado = formato.format(anual);
				String decimoFormatado = formato.format(decimo);
				String feriasFormatado = formato.format(ferias);
				
				
				lblLiquido.setText("Valor Mensal: R$ "+resultadoFormatado);
				lblAnual.setText("Valor Anual: R$ "+anualFormatado);
				lblDecimo.setText("Valor 13 Salario : R$ "+decimoFormatado);
				lblFerias.setText("Valor Ferias: R$ "+feriasFormatado);
			}
		});
		btnCalcular.setFont(new Font("Arial Black", Font.PLAIN, 14));
		btnCalcular.setBounds(125, 249, 198, 24);
		contentPane.add(btnCalcular);
	}
}
