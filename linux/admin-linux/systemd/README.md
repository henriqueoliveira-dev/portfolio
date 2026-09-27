# systemd

O `systemd` inicializa o sistema e gerencia serviços. `systemctl` consulta e controla unidades.

Exemplos de consulta:

```bash
systemctl status ssh
systemctl list-units --type=service --state=running
journalctl -u ssh --since today
```

Comandos como `start`, `stop`, `restart`, `enable` e `disable` alteram o estado do sistema. Execute-os somente em um laboratório autorizado, com privilégios adequados e após entender o impacto. Este projeto não instala nem altera serviços automaticamente.
