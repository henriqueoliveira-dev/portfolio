# Laboratório: serviços locais

## Objetivo
Observar um serviço local (SSH ou HTTP) sem configurar servidor público.

## Passos

```bash
systemctl status ssh 2>/dev/null || systemctl status sshd 2>/dev/null
ss -tln
curl --head http://127.0.0.1 2>/dev/null || true
```

Os nomes variam: Debian costuma usar `ssh`; Fedora/RHEL pode usar `sshd`. `curl` só testa HTTP se existir.

## Validação
Compare status do serviço com sockets e logs. Se não instalado, registre “não disponível”; não instale automaticamente.

## Segurança
Use VM e firewall. Nunca exponha um serviço apenas para seguir o exercício.
