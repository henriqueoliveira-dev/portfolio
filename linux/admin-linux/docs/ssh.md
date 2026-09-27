# SSH: acesso remoto e administração segura

## Objetivo

Administrar um host Linux remoto com autenticação e logs seguros, sem inventar servidores ou credenciais existentes.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

```bash
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519_lab
ssh-copy-id usuario@host-de-laboratorio
ssh usuario@host-de-laboratorio
ss -tln | grep ':22'
sudo journalctl -u ssh --since today
```

`ssh-keygen` cria uma chave; `ssh-copy-id` instala a chave pública; `ss` consulta a porta; `journalctl` consulta logs. **SIMULAÇÃO / SAÍDA ESPERADA:** `Authentication succeeded (publickey)` — saída ilustrativa, não execução real.

Revise `sshd_config` com `sshd -t` antes de reiniciar. Considere desabilitar login root e senha apenas depois de testar uma segunda sessão por chave.

## Laboratório sugerido

Em duas VMs próprias, crie um usuário sem privilégios, configure chave, teste acesso, confira logs e remova a chave ao final.

## Segurança e rollback

Nunca publique chave privada, habilite SSH em rede pública sem firewall ou feche a única sessão antes de validar a configuração.

## Referências oficiais

- [OpenSSH](https://www.openssh.com/manual.html)
- [Ubuntu OpenSSH Server](https://documentation.ubuntu.com/server/how-to/security/openssh-server/)
