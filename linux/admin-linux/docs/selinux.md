# SELinux e controle obrigatório

## Objetivo

Diferenciar permissões Unix de políticas SELinux e diagnosticar bloqueios sem recomendar desativação como solução.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

```bash
getenforce
sestatus
ls -Z /var/www/html
ausearch -m AVC -ts recent
semanage fcontext -l | head
restorecon -Rv /var/www/html
```

`getenforce` mostra modo; `ls -Z` contexto; `ausearch` procura negações; `restorecon` restaura contexto esperado. **SIMULAÇÃO / SAÍDA ESPERADA:** `Enforcing` e uma linha AVC indicando domínio e alvo.

Modos: Enforcing bloqueia e registra; Permissive registra sem bloquear; Disabled não carrega políticas. Em RHEL, valide uma mudança com `matchpathcon` e política adequada.

## Laboratório sugerido

Em VM Rocky/Fedora, sirva um arquivo em diretório permitido, mova-o para um caminho customizado, observe o AVC e corrija contexto com ferramenta apropriada.

## Segurança e rollback

Não use `setenforce 0` como correção permanente nem edite contextos sem entender rollback.

## Referências oficiais

- [SELinux Project](https://selinuxproject.org/page/Main_Page)
- [Red Hat SELinux Guide](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/9/html/using_selinux/index)
