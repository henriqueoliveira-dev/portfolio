# Laboratório: banco de dados local

## Objetivo
Planejar criação, backup e restauração com dados fictícios, sem usar credenciais reais.

## Passos

```bash
mysqladmin ping
mysqldump -u usuario_lab -p banco_lab > /tmp/banco.sql
mysql -u usuario_lab -p banco_restaurado < /tmp/banco.sql
```

Esses comandos são documentados; execute somente se MySQL/MariaDB estiver instalado na VM. Para MongoDB, use `mongodump` e `mongorestore` equivalentes.

## Validação
Compare número de tabelas/documentos antes e depois. `mysqldump` deve ser protegido e removido após o teste.

## Troubleshooting
Verifique serviço, porta, usuário e permissões. Nunca publique dumps.
