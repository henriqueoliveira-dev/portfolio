# Laboratório: Ansible localhost

## Objetivo
Executar um playbook idempotente contra `localhost`, sem servidores reais.

## Preparação
Crie localmente um inventário com `localhost ansible_connection=local` e um playbook que crie `/tmp/admin-linux-lab`.

```bash
ansible-playbook -i inventory.ini site.yml --check
ansible-playbook -i inventory.ini site.yml
ansible-playbook -i inventory.ini site.yml
```

A primeira execução pode indicar mudança; a segunda deve mostrar `changed=0`. **SIMULAÇÃO / SAÍDA ESPERADA:** `ok=1 changed=0`.

## Segurança
Revise inventário, não use `all` em ambiente desconhecido e não coloque segredos em YAML. O exercício não configura servidores reais.
