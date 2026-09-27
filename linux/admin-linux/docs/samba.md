# Samba e compartilhamento

## Objetivo

Planejar um compartilhamento Linux/Windows com usuários, permissões e exposição mínima em uma rede de laboratório.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

```bash
sudo apt install samba
sudo testparm
sudo systemctl status smbd
smbclient -L //127.0.0.1 -U usuario-lab
```

`testparm` valida `smb.conf`; `smbclient` testa o protocolo. Uma seção conceitual pode usar `path = /srv/samba/lab`, `read only = no` e `valid users = @laboratorio`; confirme permissões Unix e Samba em conjunto. **SIMULAÇÃO / SAÍDA ESPERADA:** `Loaded services file OK`.

Antes de recarregar, faça cópia de `smb.conf`, valide com `testparm` e consulte `journalctl -u smbd`.

## Laboratório sugerido

Em uma VM isolada, crie `/srv/samba/lab`, grupo e usuário de teste, configure um compartilhamento sem dados reais, acesse de um cliente autorizado e remova tudo ao finalizar.

## Segurança e rollback

Não compartilhe `/home` inteiro, não use guest sem necessidade e não exponha SMB à Internet.

## Referências oficiais

- [Samba Documentation](https://www.samba.org/samba/docs/)
