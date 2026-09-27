# Gerenciamento de software e atualizações

## Objetivo

Instalar, pesquisar, atualizar e remover pacotes entendendo a diferença entre gerenciador de alto nível e ferramenta de baixo nível.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

### Debian/Ubuntu

```bash
apt-cache policy curl
sudo apt update
apt list --upgradable
sudo apt install curl
sudo apt remove curl
```

`apt update` atualiza índices; `install` resolve dependências; `remove` mantém, em geral, arquivos de configuração. `dpkg -l` consulta o banco local. **SIMULAÇÃO / SAÍDA ESPERADA:** `curl 7.x ... [installed]`.

### RHEL/Rocky/Fedora

```bash
dnf info curl
sudo dnf check-update
sudo dnf install curl
rpm -q curl
```

`dnf` resolve dependências e `rpm` consulta o pacote instalado. Nomes, repositórios e políticas variam entre versões.

## Laboratório sugerido

Em uma VM, pesquise um pacote já instalado, atualize índices, instale uma ferramenta de diagnóstico, verifique sua versão e remova somente se não for dependência do laboratório.

## Segurança e rollback

Faça snapshot antes de atualizações de kernel. Se houver locks, verifique outro gerenciador em execução; não remova arquivos de lock manualmente sem entender a causa.

## Referências oficiais

- [Debian Handbook](https://www.debian.org/doc/manuals/debian-handbook/apt.en.html)
- [Fedora DNF](https://docs.fedoraproject.org/en-US/quick-docs/dnf/)
