# Backup, integridade e restauração

## Objetivo

Demonstrar o ciclo backup → validação → restauração, com retenção, espaço, logs e exclusões explícitas.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

```bash
tar -czf backup-$(date +%Y%m%d-%H%M%S).tar.gz -C /home henrique
sha256sum backup-*.tar.gz
tar -tzf backup-ARQUIVO.tar.gz
tar -xzf backup-ARQUIVO.tar.gz -C /tmp/restauracao
```

`tar -t` lista sem extrair; `sha256sum` registra integridade; extração em diretório temporário permite conferência. **SIMULAÇÃO / SAÍDA ESPERADA:** `backup-20260101-050000.tar.gz: OK`.

Defina retenção por idade e espaço, exclua caches regeneráveis somente quando documentado e teste restauração. O script deste projeto recebe origem/destino por variável e não grava backup real no Git.

## Laboratório sugerido

Crie arquivos fictícios em uma pasta temporária, execute o script com `BACKUP_SOURCE` e `BACKUP_DEST`, valide lista e restaure em outro diretório; compare hashes dos arquivos.

## Segurança e rollback

Não faça backup de `/home` real neste repositório, não versione dumps e proteja arquivos de backup.

## Referências oficiais

- [GNU tar](https://www.gnu.org/software/tar/manual/)
