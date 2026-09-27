# Bash e Shell Script

## Objetivo

Criar automações legíveis, previsíveis e seguras para Linux. O foco é demonstrar variáveis, argumentos, condições, loops, funções, códigos de retorno, arquivos, logs e tratamento de erros.

## Estrutura mínima

```bash
#!/usr/bin/env bash
set -euo pipefail

main(){
  printf 'Olá, %s\n' "${1:-laboratório}"
}
main "$@"
```

`#!/usr/bin/env bash` procura Bash no ambiente; `set -e` interrompe em erro não tratado; `-u` denuncia variáveis ausentes; `pipefail` preserva falha em pipelines. Use aspas em variáveis e `"$@"` para preservar argumentos.

## Variáveis e argumentos

```bash
NAME="${1:-aluno}"
readonly LOG_FILE="/tmp/admin-linux.log"
printf 'nome=%s\n' "$NAME"
```

`${1:-aluno}` usa `aluno` quando o primeiro argumento não existe. `readonly` evita alteração acidental. Não coloque senhas em variáveis de script versionado.

## Condições e códigos de retorno

```bash
if [[ -r "$arquivo" ]]; then
  cat "$arquivo"
else
  printf 'Arquivo não legível: %s\n' "$arquivo" >&2
  exit 1
fi
```

`[[ ]]` faz testes do Bash; `-r` verifica leitura; `>&2` envia erro para stderr; `exit 1` comunica falha. O código `0` normalmente significa sucesso.

## Loops e funções

```bash
for item in /var/log/*.log; do
  [[ -e "$item" ]] || continue
  printf '%s\n' "$item"
done

log(){ printf '[%s] %s\n' "$(date '+%F %T')" "$*"; }
```

Use `for` para coleções conhecidas e `while` para fluxo contínuo. Funções evitam duplicação e centralizam logs.

## Arquivos, dependências e permissões

Antes de usar ferramenta externa:

```bash
command -v tar >/dev/null 2>&1 || { echo 'tar ausente' >&2; exit 1; }
[[ -d "$SOURCE_DIR" ]] || { echo 'origem ausente' >&2; exit 1; }
```

Valide comandos, caminhos e permissões. Prefira `mktemp -d` para temporários. Nunca construa comandos com `eval` a partir de entrada do usuário.

## Simulação / saída esperada

```text
SIMULAÇÃO / SAÍDA ESPERADA
[2026-01-01 05:00:00] Backup criado e validado: /tmp/backup-20260101-050000.tar.gz
```

A saída acima é ilustrativa; os scripts deste projeto produzem valores do host apenas quando executados localmente.

## Laboratório

Crie um script que receba um diretório, valide se ele existe, conte arquivos regulares, grave um log e retorne código não zero para caminho inválido. Teste caminho válido, vazio, inexistente e com espaços.

## Troubleshooting

- `unbound variable`: inicialize a variável ou use `${VAR:-valor}`.
- `Permission denied`: confira modo, proprietário e filesystem; não use `777` automaticamente.
- `command not found`: use `command -v` e documente dependência.
- Pipeline mascara erro: mantenha `set -o pipefail`.

## Segurança

Scripts administrativos devem usar caminhos explícitos, confirmar alvos, evitar globos perigosos, registrar operações e possuir rollback documentado. Revise o diff antes de publicar.

## Referências

- [Bash Reference Manual](https://www.gnu.org/software/bash/manual/)
- [ShellCheck](https://www.shellcheck.net/)
