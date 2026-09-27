# Atualizações, kernel e rollback

## Objetivo

Planejar atualizações, distinguir pacotes de kernel, verificar reinicialização e manter caminho de retorno.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

```bash
# Debian/Ubuntu
sudo apt update
apt list --upgradable
sudo apt upgrade
needrestart -b 2>/dev/null || true

# RHEL/Rocky/Fedora
sudo dnf check-update
sudo dnf upgrade
uname -r
```

Atualize índices antes de instalar; revise lista; aplique em janela planejada; confirme kernel e serviços depois. `check-update` pode retornar código 100 quando há atualizações no DNF, o que não é necessariamente falha. **SIMULAÇÃO / SAÍDA ESPERADA:** `0 upgraded, 3 to install`.

Rollback pode significar snapshot, pacote anterior ou kernel anterior, conforme distro e política.

## Laboratório sugerido

Em VM, crie snapshot, registre versão, aplique atualização, valide serviços e restaure snapshot somente para testar rollback.

## Segurança e rollback

Não reinicie remotamente sem console e janela de manutenção.

## Referências oficiais

- [Ubuntu release notes](https://discourse.ubuntu.com/c/announcements/release-notes/)\n- [DNF documentation](https://dnf.readthedocs.io/)
