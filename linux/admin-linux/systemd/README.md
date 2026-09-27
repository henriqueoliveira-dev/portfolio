# systemd e systemctl

## Objetivo
Entender unidades, estado, inicialização, logs e validação de serviços sem alterar o host automaticamente.

## Consultar

```bash
systemctl status ssh
systemctl list-units --type=service --state=running
systemctl is-enabled ssh
journalctl -u ssh --since today
```

`status` reúne estado e últimas linhas; `list-units` filtra serviços ativos; `is-enabled` consulta inicialização; `journalctl` lê logs. Debian/Ubuntu geralmente usam `ssh`; RHEL/Fedora frequentemente usam `sshd`.

## Ciclo de mudança em laboratório

```bash
sudo systemctl start nome.service
sudo systemctl stop nome.service
sudo systemctl restart nome.service
sudo systemctl enable nome.service
sudo systemctl disable nome.service
```

`start/stop/restart` alteram o estado atual; `enable/disable` alteram inicialização futura. Valide cada mudança com `status` e `journalctl`. **SIMULAÇÃO / SAÍDA ESPERADA:** `Active: active (running)` é uma saída ilustrativa.

## Unidades próprias

Antes de instalar uma unidade, valide com `systemd-analyze verify nome.service`; após alteração, use `daemon-reload`, confirme caminho absoluto e teste o serviço em VM. Para rollback, remova a unidade criada e execute `daemon-reload` novamente.

## Troubleshooting

`status=203/EXEC` costuma indicar caminho ou permissão incorreta; `status=1/FAILURE` exige logs da aplicação; `Unit not found` indica nome/distribuição diferente. Não reinicie SSH remotamente sem uma segunda sessão ou console.

## Referência

[systemd documentation](https://www.freedesktop.org/wiki/Software/systemd/)
