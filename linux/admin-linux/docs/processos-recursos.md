# Processos, jobs e recursos

## Objetivo

Identificar consumo de CPU, RAM, swap, armazenamento e processos em foreground/background antes de agir.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

```bash
ps -eo pid,ppid,stat,comm,%cpu,%mem --sort=-%cpu | head
top
free -h
df -h
 du -xhd1 /var 2>/dev/null | sort -h
uptime
pgrep -a ssh
```

`ps` fornece uma fotografia; `top` acompanha; `free` mostra memória/swap; `df` mostra espaço do filesystem; `du` estima uso por diretório; `uptime` mostra carga; `pgrep` encontra PID. **SIMULAÇÃO / SAÍDA ESPERADA:** `load average: 0.20, 0.18, 0.12` e `Mem: 3.8Gi total, 1.2Gi used`.

### Jobs e sinais

```bash
sleep 120 &
jobs -l
fg %1
# em outra situação controlada:
kill PID
```

`&` envia para background; `jobs` lista a sessão; `fg` traz ao foreground; `kill` envia um sinal. Comece com TERM e investigue antes de usar KILL. `nice` e `renice` alteram prioridade; faça isso apenas em processos de teste.

## Laboratório sugerido

Crie um `sleep` em background, identifique-o, suspenda com `Ctrl+Z`, retome com `bg` e finalize com `kill`. Compare CPU/memória antes e depois.

## Segurança e rollback

Nunca mate PID sem confirmar comando, usuário e impacto. Um `kill -9` pode impedir limpeza e corromper dados.

## Referências oficiais

- [procps-ng](https://gitlab.com/procps-ng/procps)
- [GNU Bash jobs](https://www.gnu.org/software/bash/manual/html_node/Job-Control.html)
