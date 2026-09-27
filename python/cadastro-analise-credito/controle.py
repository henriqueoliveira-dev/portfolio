import os

from PyQt5 import uic, QtWidgets, QtPrintSupport
import mysql.connector
import csv
from openpyxl import Workbook


# ==========================================================
# CONEXÃO COM O BANCO DE DADOS
# ==========================================================

conexao = mysql.connector.connect(
    host=os.getenv('DB_HOST', '127.0.0.1'),
    user=os.getenv('DB_USER', 'dev'),
    password=os.getenv('DB_PASSWORD'),
    database=os.getenv('DB_NAME', 'hmtecnologia_credito')
)


# ==========================================================
# CADASTRAR CLIENTE
# ==========================================================

def inserir_dados():

    nome = cadastro.txtNome.text()
    cpf = cadastro.txtCpf.text()
    idade = cadastro.txtIdade.text()
    renda = cadastro.txtRenda.text()
    situacao = cadastro.txtSituacaoResposta.text()

    cursor = conexao.cursor()

    comando_SQL = '''
        INSERT INTO clientes
        (nome, cpf, idade, renda, situacao)
        VALUES (%s, %s, %s, %s, %s)
    '''

    dados = (nome, cpf, idade, renda, situacao)

    cursor.execute(comando_SQL, dados)
    conexao.commit()

    cursor.close()

    # Limpar campos
    cadastro.txtNome.setText('')
    cadastro.txtCpf.setText('')
    cadastro.txtIdade.setText('')
    cadastro.txtRenda.setText('')
    cadastro.txtSituacaoResposta.setText('')

    cadastro.lblAnalise.setText(
        'Clique no Botão Analisar Crédito'
    )


# ==========================================================
# ANÁLISE DE CRÉDITO
# ==========================================================

def analise():

    renda = cadastro.txtRenda.text()
    renda = float(renda)

    idade = cadastro.txtIdade.text()
    idade = int(idade)

    if renda >= 3500 and idade >= 21:

        cadastro.lblAnalise.setText(
            'Cadastro com chances de crédito'
        )

    else:

        cadastro.lblAnalise.setText(
            'Cadastro não selecionado para crédito'
        )


# ==========================================================
# CARREGAR CLIENTES NA TABELA
# ==========================================================

def carregar_clientes():

    cursor = conexao.cursor()

    comando_SQL = 'SELECT * FROM clientes'

    cursor.execute(comando_SQL)

    leitura_clientes = cursor.fetchall()

    relatorio.tableClientes.setRowCount(
        len(leitura_clientes)
    )

    relatorio.tableClientes.setColumnCount(6)

    for i in range(len(leitura_clientes)):

        for j in range(6):

            item = QtWidgets.QTableWidgetItem(
                str(leitura_clientes[i][j])
            )

            relatorio.tableClientes.setItem(
                i,
                j,
                item
            )

    cursor.close()


# ==========================================================
# ABRIR RELATÓRIO
# ==========================================================

def abrir_relatorio():

    carregar_clientes()

    relatorio.show()


# ==========================================================
# EDITAR CLIENTE
# ==========================================================

numero_id_geral = 0


def editar_dados():

    global numero_id_geral

    linha_selecionada = relatorio.tableClientes.currentRow()

    if linha_selecionada < 0:

        QtWidgets.QMessageBox.warning(
            relatorio,
            'Atenção',
            'Selecione um cliente para editar.'
        )

        return

    cursor = conexao.cursor()

    cursor.execute(
        'SELECT id FROM clientes'
    )

    leitura_clientes = cursor.fetchall()

    id_ativo = leitura_clientes[linha_selecionada][0]

    cursor.execute(
        'SELECT * FROM clientes WHERE id = %s',
        (id_ativo,)
    )

    leitura_cliente = cursor.fetchall()

    cursor.close()

    if len(leitura_cliente) == 0:

        QtWidgets.QMessageBox.warning(
            relatorio,
            'Erro',
            'Cliente não encontrado.'
        )

        return

    numero_id_geral = id_ativo

    editar.txtAlterarId.setText(
        str(leitura_cliente[0][0])
    )

    editar.txtAlterarNome.setText(
        str(leitura_cliente[0][1])
    )

    editar.txtAlterarCpf.setText(
        str(leitura_cliente[0][2])
    )

    editar.txtAlterarIdade.setText(
        str(leitura_cliente[0][3])
    )

    editar.txtAlterarRenda.setText(
        str(leitura_cliente[0][4])
    )

    editar.txtAlterarSituacao.setText(
        str(leitura_cliente[0][5])
    )

    editar.show()


# ==========================================================
# ALTERAR DADOS DO CLIENTE
# ==========================================================

def aleracao_de_dados():

    global numero_id_geral

    id_cliente = editar.txtAlterarId.text()
    nome = editar.txtAlterarNome.text()
    cpf = editar.txtAlterarCpf.text()
    idade = editar.txtAlterarIdade.text()
    renda = editar.txtAlterarRenda.text()
    situacao = editar.txtAlterarSituacao.text()

    cursor = conexao.cursor()

    comando_SQL = '''
        UPDATE clientes
        SET
            id = %s,
            nome = %s,
            cpf = %s,
            idade = %s,
            renda = %s,
            situacao = %s
        WHERE id = %s
    '''

    dados = (
        id_cliente,
        nome,
        cpf,
        idade,
        renda,
        situacao,
        numero_id_geral
    )

    cursor.execute(comando_SQL, dados)

    conexao.commit()

    cursor.close()

    editar.close()

    carregar_clientes()

    relatorio.show()


# ==========================================================
# EXCLUIR CLIENTE
# ==========================================================

def excluir_dados():

    linha_selecionada = relatorio.tableClientes.currentRow()

    if linha_selecionada < 0:

        QtWidgets.QMessageBox.warning(
            relatorio,
            'Atenção',
            'Selecione um cliente para excluir.'
        )

        return

    resposta = QtWidgets.QMessageBox.question(
        relatorio,
        'Confirmar exclusão',
        'Deseja realmente excluir este cliente?',
        QtWidgets.QMessageBox.Yes |
        QtWidgets.QMessageBox.No
    )

    if resposta != QtWidgets.QMessageBox.Yes:
        return

    cursor = conexao.cursor()

    cursor.execute(
        'SELECT id FROM clientes'
    )

    leitura_clientes = cursor.fetchall()

    id_ativo = leitura_clientes[linha_selecionada][0]

    cursor.execute(
        'DELETE FROM clientes WHERE id = %s',
        (id_ativo,)
    )

    conexao.commit()

    cursor.close()

    carregar_clientes()


# ==========================================================
# EXPORTAR PDF
# ==========================================================

def exportar_pdf(arquivo):

    printer = QtPrintSupport.QPrinter()

    printer.setOutputFormat(
        QtPrintSupport.QPrinter.PdfFormat
    )

    printer.setOutputFileName(arquivo)

    relatorio.tableClientes.render(printer)


# ==========================================================
# EXPORTAR XML
# ==========================================================

def exportar_xml(arquivo):

    cursor = conexao.cursor()

    cursor.execute(
        'SELECT * FROM clientes'
    )

    clientes = cursor.fetchall()

    cursor.close()

    with open(
        arquivo,
        'w',
        encoding='utf-8'
    ) as xml:

        xml.write('<?xml version="1.0" encoding="UTF-8"?>\n')
        xml.write('<clientes>\n')

        for cliente in clientes:

            xml.write('    <cliente>\n')

            xml.write(
                f'        <id>{cliente[0]}</id>\n'
            )

            xml.write(
                f'        <nome>{cliente[1]}</nome>\n'
            )

            xml.write(
                f'        <cpf>{cliente[2]}</cpf>\n'
            )

            xml.write(
                f'        <idade>{cliente[3]}</idade>\n'
            )

            xml.write(
                f'        <renda>{cliente[4]}</renda>\n'
            )

            xml.write(
                f'        <situacao>{cliente[5]}</situacao>\n'
            )

            xml.write('    </cliente>\n')

        xml.write('</clientes>\n')


# ==========================================================
# EXPORTAR CSV
# ==========================================================

def exportar_csv(arquivo):

    cursor = conexao.cursor()

    cursor.execute(
        'SELECT * FROM clientes'
    )

    clientes = cursor.fetchall()

    cursor.close()

    cabecalho = [
        'ID',
        'Nome',
        'CPF',
        'Idade',
        'Renda',
        'Situação'
    ]

    with open(
        arquivo,
        'w',
        newline='',
        encoding='utf-8-sig'
    ) as csv_file:

        escritor = csv.writer(csv_file)

        escritor.writerow(cabecalho)

        escritor.writerows(clientes)


# ==========================================================
# EXPORTAR EXCEL
# ==========================================================

def exportar_excel(arquivo):

    cursor = conexao.cursor()

    cursor.execute(
        'SELECT * FROM clientes'
    )

    clientes = cursor.fetchall()

    cursor.close()

    workbook = Workbook()

    planilha = workbook.active

    planilha.title = 'Clientes'

    cabecalho = [
        'ID',
        'Nome',
        'CPF',
        'Idade',
        'Renda',
        'Situação'
    ]

    planilha.append(cabecalho)

    for cliente in clientes:

        planilha.append(cliente)

    workbook.save(arquivo)


# ==========================================================
# EXPORTAR RELATÓRIO
# ==========================================================

def exportar_relatorio():

    arquivo, tipo = QtWidgets.QFileDialog.getSaveFileName(
        relatorio,
        'Exportar relatório',
        '',
        '''
        PDF (*.pdf);
        XML (*.xml);
        CSV (*.csv);
        Excel (*.xlsx)
        '''
    )

    if not arquivo:
        return

    # ======================================================
    # PDF
    # ======================================================

    if 'PDF' in tipo:

        if not arquivo.lower().endswith('.pdf'):
            arquivo += '.pdf'

        exportar_pdf(arquivo)

    # ======================================================
    # XML
    # ======================================================

    elif 'XML' in tipo:

        if not arquivo.lower().endswith('.xml'):
            arquivo += '.xml'

        exportar_xml(arquivo)

    # ======================================================
    # CSV
    # ======================================================

    elif 'CSV' in tipo:

        if not arquivo.lower().endswith('.csv'):
            arquivo += '.csv'

        exportar_csv(arquivo)

    # ======================================================
    # EXCEL
    # ======================================================

    elif 'Excel' in tipo:

        if not arquivo.lower().endswith('.xlsx'):
            arquivo += '.xlsx'

        exportar_excel(arquivo)

    else:
        return

    QtWidgets.QMessageBox.information(
        relatorio,
        'Exportação',
        'Relatório exportado com sucesso!'
    )


# ==========================================================
# INICIAR APLICAÇÃO
# ==========================================================

app = QtWidgets.QApplication([])


# ==========================================================
# CARREGAR INTERFACES
# ==========================================================

cadastro = uic.loadUi('cadastro.ui')

relatorio = uic.loadUi('relatorio.ui')

editar = uic.loadUi('editar.ui')


# ==========================================================
# BOTÕES - CADASTRO
# ==========================================================

cadastro.btnSalvar.clicked.connect(
    inserir_dados
)

cadastro.btnAnalise.clicked.connect(
    analise
)

cadastro.btnRelatorio.clicked.connect(
    abrir_relatorio
)


# ==========================================================
# BOTÕES - RELATÓRIO
# ==========================================================

relatorio.btnEditar.clicked.connect(
    editar_dados
)

relatorio.btnExcluir.clicked.connect(
    excluir_dados
)

relatorio.btnImprimir.clicked.connect(
    exportar_relatorio
)


# ==========================================================
# BOTÃO - EDITAR
# ==========================================================

editar.btnAlterar.clicked.connect(
    aleracao_de_dados
)


# ==========================================================
# ABRIR SISTEMA
# ==========================================================

cadastro.show()


# ==========================================================
# EXECUTAR
# ==========================================================

app.exec()
