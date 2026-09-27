# Laboratório: baseline de segurança

## Objetivo
Registrar estado inicial de contas, serviços, portas e atualizações em uma VM.

## Passos

```bash
whoami
sudo ss -tulpen
systemctl --type=service --state=running
sudo journalctl -p warning -b
```

`whoami` identifica contexto; `ss` mostra portas; `systemctl` lista serviços; `journalctl` mostra warnings do boot.

## Saída esperada

```text
SIMULAÇÃO / SAÍDA ESPERADA
Baseline registrada; nenhum serviço foi desabilitado automaticamente.
```

## Validação
Salve o resultado fora do Git e justifique cada porta/serviço. Não inclua IPs, nomes de usuários ou logs reais no portfólio.

## Rollback
Como o laboratório não altera configuração, o rollback é descartar o relatório local.
