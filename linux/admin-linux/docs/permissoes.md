# Permissões, propriedade e links

## Objetivo

Interpretar bits de permissão, aplicar mudanças mínimas e diferenciar links simbólicos de arquivos reais.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

```bash
ls -l arquivo
chmod u+x script.sh
chmod 640 arquivo
chown aluno-lab:laboratorio arquivo
chgrp laboratorio arquivo
umask
ln -s /var/log/app.log app.log
```

`u+x` adiciona execução ao proprietário; `640` significa proprietário leitura/escrita, grupo leitura e outros sem acesso; `chown` altera proprietário e grupo; `umask` define a máscara padrão; `ln -s` cria uma referência simbólica. **SIMULAÇÃO / SAÍDA ESPERADA:** `-rw-r----- 1 aluno-lab laboratorio 120 arquivo`.

Valide com `stat arquivo`, `readlink -f app.log` e uma tentativa de leitura feita por uma conta de laboratório. `Operation not permitted` pode indicar falta de privilégio ou filesystem montado com restrições.

## Laboratório sugerido

Em uma VM, crie dois usuários e um grupo, faça um diretório compartilhado com `chmod 2770` e valide criação por membros do grupo. Registre o resultado sem copiar dados reais.

## Segurança e rollback

Evite `chmod -R 777`, `chown -R` em caminhos não confirmados e alterações em `/etc`, `/var` ou `/home` de produção. Para rollback, registre proprietário e modo antes da mudança.

## Referências oficiais

- [GNU chmod](https://www.gnu.org/software/coreutils/manual/html_node/Mode-Structure.html)
- [Linux permissions](https://man7.org/linux/man-pages/man1/chmod.1.html)
