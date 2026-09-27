# Fundamentos Linux e sistema de arquivos

## Objetivo

Reconhecer a hierarquia Linux, separar configuração, dados, programas e arquivos temporários, e investigar um host sem modificar o sistema.

## Diretórios importantes

| Caminho | Finalidade |
|---|---|
| `/etc` | Configuração do sistema e serviços. |
| `/var` | Dados variáveis: logs, filas, cache e estados. |
| `/home` | Dados dos usuários. |
| `/opt` | Aplicações adicionais instaladas fora do conjunto básico. |
| `/tmp` | Temporários; pode ser limpo na inicialização. |
| `/usr` | Programas, bibliotecas e documentação distribuídos pelo sistema. |
| `/boot` | Kernel e arquivos de inicialização. |
| `/proc` | Visão virtual de processos e kernel. |
| `/sys` | Informações e interfaces virtuais de dispositivos/kernel. |

## Comandos

```bash
pwd
findmnt /
ls -lah /etc
find /var/log -maxdepth 1 -type f -printf '%f\n' | sort
cat /etc/os-release
```

`pwd` mostra o diretório atual; `findmnt /` identifica o filesystem da raiz; `ls` lista configuração com permissões; `find` faz uma consulta limitada aos logs; `/etc/os-release` identifica a distribuição. O limite de profundidade evita uma busca desnecessariamente ampla.

```text
SIMULAÇÃO / SAÍDA ESPERADA
NAME   FSTYPE SOURCE  OPTIONS
/      ext4   /dev/vda2 rw,relatime
```

## Validação e erros comuns

Confirme que o caminho consultado é o esperado e que o usuário tem permissão de leitura. `Permission denied` indica falta de permissão; não resolva com `chmod 777`. Use `sudo` apenas para leitura quando necessário e documente o motivo.

## Laboratório

1. Em uma VM, registre `cat /etc/os-release`, `uname -r` e `findmnt`.
2. Liste `/etc`, `/var/log` e `/home` sem alterar arquivos.
3. Explique por que um log pertence a `/var` e uma configuração a `/etc`.
4. Salve apenas o relatório de estudo fora do repositório; não publique dados do host.

## Referências

- [Filesystem Hierarchy Standard](https://refspecs.linuxfoundation.org/fhs.shtml)
- [GNU Coreutils](https://www.gnu.org/software/coreutils/manual/coreutils.html)
