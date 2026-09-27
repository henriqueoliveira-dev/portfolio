# Monitoramento local

## Objetivo

Coletar CPU, RAM, swap, disco, temperatura quando disponível, uptime, processos, rede, serviços, SSH, Samba, firewall e atualizações sem assumir que todos os comandos existem.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

```bash
uptime
free -h
df -h
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head
ip -brief addr
systemctl --type=service --state=running
```

O `monitor.sh` verifica comandos opcionais e continua quando ausentes. Em Debian/Ubuntu, atualizações podem ser consultadas por `apt list --upgradable`; em RHEL, por `dnf check-update` — ambos devem ser executados conscientemente. **SIMULAÇÃO / SAÍDA ESPERADA:** seção `## sensors: ferramenta não disponível` é normal quando não há sensor.

## Laboratório sugerido

Execute o script em uma VM, salve a saída fora do Git, compare duas coletas e investigue uma variação de disco ou memória.

## Segurança e rollback

Uma métrica isolada não prova problema. Não instale sensores nem altere serviços automaticamente.

## Referências oficiais

- [systemd journal](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html)
