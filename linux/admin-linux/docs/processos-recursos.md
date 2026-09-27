# Processos e recursos

Um processo tem um PID e consome CPU, memória e outros recursos. Ferramentas de consulta:

```bash
ps aux
top
htop
free -h
df -h
du -sh .
uptime
pgrep -a nome
```

Para encerrar um processo, confirme o PID e tente primeiro um sinal normal:

```bash
kill PID
pkill -x nome
```

Não use `kill -9` como primeira opção. Investigue a causa e o impacto antes de interromper um serviço.
