# Firewall Linux

## Objetivo

Consultar e alterar regras em laboratório com UFW, firewalld ou nftables, deixando claro o risco de bloquear SSH remoto.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

### UFW — Debian/Ubuntu

```bash
sudo ufw status verbose
sudo ufw allow 22/tcp
sudo ufw delete allow 22/tcp
```

`status` consulta; `allow` cria uma regra; `delete` remove. Antes de ativar, permita o método de administração e mantenha console de recuperação. **SIMULAÇÃO / SAÍDA ESPERADA:** `Status: active`.

### firewalld — RHEL/Rocky/Fedora

```bash
sudo firewall-cmd --state
sudo firewall-cmd --list-all
sudo firewall-cmd --add-service=http --permanent
sudo firewall-cmd --reload
```

A opção `--permanent` altera a configuração persistente; `--reload` a carrega. Valide com `--list-all`. `nft list ruleset` consulta a camada nftables; não misture gerenciadores sem compreender a distribuição.

## Laboratório sugerido

Use uma VM com acesso pelo console. Abra uma porta de teste para um serviço local, verifique com `ss`, teste pelo cliente autorizado e remova a regra.

## Segurança e rollback

Uma regra SSH incorreta pode cortar o acesso. Faça backup da configuração, aplique uma mudança por vez e tenha rollback.

## Referências oficiais

- [Ubuntu UFW](https://help.ubuntu.com/community/UFW)
- [firewalld](https://firewalld.org/documentation/)
- [nftables wiki](https://wiki.nftables.org/)
