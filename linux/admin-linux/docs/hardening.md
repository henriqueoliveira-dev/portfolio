# Hardening de servidores Linux

## Objetivo

Aplicar princípios de defesa em profundidade: atualização, menor privilégio, SSH, firewall, serviços, logs, backup e auditoria.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

### Checklist seguro

```bash
sudo apt update
sudo apt list --upgradable
ss -tulpen
systemctl --type=service --state=running
journalctl -p warning -b
```

Atualize índices; veja pendências; inventarie portas; liste serviços; revise warnings do boot. Em RHEL, use `dnf check-update`. **SIMULAÇÃO / SAÍDA ESPERADA:** lista de serviços e portas que devem ser justificadas.

Cada mudança deve ter motivo, impacto, teste e rollback. Desabilitar SSH, alterar firewall ou remover serviço sem console de recuperação pode interromper administração.

## Laboratório sugerido

Em VM, crie baseline, desabilite apenas um serviço de teste, valide dependências e reverta. Compare baseline e pós-mudança.

## Segurança e rollback

Não marque um host como seguro apenas por executar um checklist. Segurança depende de contexto, ameaça, atualização e monitoramento contínuos.

## Referências oficiais

- [CIS Benchmarks](https://www.cisecurity.org/cis-benchmarks)
- [Ubuntu Security](https://ubuntu.com/security)
