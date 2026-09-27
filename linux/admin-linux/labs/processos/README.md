# Laboratório: processos e jobs

## Objetivo
Identificar um processo de teste, observar recursos e encerrá-lo com sinal normal.

## Preparação

```bash
sleep 120 &
jobs -l
pgrep -a -f 'sleep 120'
```

O processo é intencionalmente inofensivo. `jobs` é específico da sessão; `pgrep` localiza pelo padrão.

## Simulação / saída esperada

```text
[1]+  12345 Running                 sleep 120 &
12345 sleep 120
```

## Validação

Observe `ps -p 12345 -o pid,stat,cmd`, depois finalize `kill 12345` e confirme que `pgrep` não retorna o processo.

## Troubleshooting e rollback

Se o PID já encerrou, não reutilize o número sem nova consulta. Não use `pkill` com padrões amplos. O rollback é simplesmente não iniciar processos adicionais; o laboratório não altera serviços.
