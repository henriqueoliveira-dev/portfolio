# Ansible e automação declarativa

## Objetivo

Introduzir inventário, playbook, módulos, variáveis, handlers e idempotência em localhost, sem afirmar servidores configurados.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

```bash
ansible --version
ansible-inventory -i inventory.ini --list
ansible all -i inventory.ini -m ping
ansible-playbook -i inventory.ini site.yml --check
```

`--check` simula mudanças; `ping` valida conexão; inventário descreve alvos. Um playbook de laboratório pode criar um diretório em `localhost` com `become: false`. **SIMULAÇÃO / SAÍDA ESPERADA:** `localhost | SUCCESS => { "changed": false, "ping": "pong" }`.

Idempotência significa executar novamente sem produzir alteração desnecessária. Use `--diff` com cuidado e não coloque segredos em YAML; prefira Ansible Vault.

## Laboratório sugerido

Em `labs/automacao/`, crie inventário localhost, playbook que cria diretório temporário, rode `--check`, execute e rode novamente para observar `changed=0`.

## Segurança e rollback

Não execute playbooks contra hosts desconhecidos. Confirme inventário e limite privilégios.

## Referências oficiais

- [Ansible Documentation](https://docs.ansible.com/)
