# Gerenciamento de software

No Debian/Ubuntu, `apt` resolve dependências e `dpkg` consulta pacotes instalados. Na família RHEL, `dnf` resolve dependências e `rpm` consulta pacotes.

```bash
apt-cache search termo
sudo apt update
sudo apt upgrade
dpkg -S /caminho/arquivo
dnf search termo
rpm -qi pacote
```

Use repositórios confiáveis e registre alterações. Não execute comandos de instalação no escuro.
