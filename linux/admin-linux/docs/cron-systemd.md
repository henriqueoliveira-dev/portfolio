# Cron, crontab e systemd timers

## Objetivo

Agendar tarefas com contexto, logs, ambiente e rollback, comparando Cron com timers do systemd.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

### Cron

```bash
crontab -e
crontab -l
journalctl -u cron --since today
```

A expressão `0 5 * * *` significa minuto 0, hora 5, qualquer dia do mês, qualquer mês e qualquer dia da semana. Use caminhos absolutos e redirecione logs. **SIMULAÇÃO / SAÍDA ESPERADA:** `0 5 * * * /opt/admin-linux/scripts/manutencao.sh`.

### systemd timer

Um timer usa unidades `.service` e `.timer`, `OnCalendar=*-*-* 05:00:00`, `Persistent=true` e `systemctl list-timers`. Valide com `systemd-analyze verify` antes de instalar.

## Laboratório sugerido

Use um script que grava em `/tmp/admin-linux-lab`, agende a cada poucos minutos apenas em VM, observe log, desabilite e remova a unidade. Não instale o cron deste projeto automaticamente.

## Segurança e rollback

Cron tem ambiente mínimo; timers oferecem status e integração com journal. Nunca agende script destrutivo ou com caminho relativo.

## Referências oficiais

- [crontab man page](https://man7.org/linux/man-pages/man5/crontab.5.html)
- [systemd.timer](https://www.freedesktop.org/software/systemd/man/latest/systemd.timer.html)
