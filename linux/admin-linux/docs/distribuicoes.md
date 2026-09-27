# Distribuições e famílias

## Debian e Ubuntu

Debian, Ubuntu e derivados usam principalmente `apt` para gerenciamento de pacotes e `dpkg` como ferramenta de baixo nível.

```bash
apt-cache policy pacote
sudo apt update
sudo apt install pacote
dpkg -l
```

## Red Hat e derivados

RHEL, Rocky Linux e Fedora usam `dnf` nas versões atuais e `rpm` como formato/ferramenta de baixo nível.

```bash
dnf info pacote
sudo dnf install pacote
rpm -qa
```

Os comandos e nomes de pacotes podem variar. Este laboratório não afirma ter utilizado todas as famílias.
