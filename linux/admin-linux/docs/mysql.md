# MySQL/MariaDB no Linux

## Objetivo

Estudar serviço, usuários, permissões, conexão e backup/restauração em um banco local com dados fictícios.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

```bash
sudo systemctl status mysql
mysqladmin ping
mysql -u usuario_lab -p banco_lab
mysqldump -u usuario_lab -p banco_lab > banco_lab.sql
mysql -u usuario_lab -p banco_lab < banco_lab.sql
```

`mysqladmin ping` testa disponibilidade; o cliente conecta; `mysqldump` exporta; redirecionamento importa. **SIMULAÇÃO / SAÍDA ESPERADA:** `mysqld is alive`.

Use usuário específico, permissões mínimas e senha solicitada interativamente. Em algumas distribuições o serviço é `mariadb`; confirme com `systemctl list-unit-files`.

## Laboratório sugerido

Em uma VM, crie banco e tabela fictícios, faça inserção, dump, restaure em outro banco e compare contagens. Documente versão com `SELECT VERSION()`.

## Segurança e rollback

Não grave senha em scripts, não exponha a porta 3306 e proteja dumps; eles podem conter dados pessoais.

## Referências oficiais

- [MySQL Reference Manual](https://dev.mysql.com/doc/refman/en/)
