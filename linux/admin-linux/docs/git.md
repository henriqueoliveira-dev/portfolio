# Git no Linux e versionamento

## Objetivo

Usar Git para revisar mudanças, criar branches, fazer commits atômicos e evitar publicar segredos.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

```bash
git status
git diff
git switch -c revisar-admin-linux
git add linux/admin-linux
git commit -m "docs: melhora modulo"
git log --oneline --decorate -5
git push -u origin revisar-admin-linux
```

`status` mostra estado; `diff` revisa; `switch -c` cria branch; `add` prepara; `commit` registra; `log` inspeciona; `push` publica. **SIMULAÇÃO / SAÍDA ESPERADA:** `working tree clean`.

Antes de `push`, procure `.env`, chaves e credenciais. Use `.gitignore`, revise `git diff --cached` e prefira commits pequenos.

## Laboratório sugerido

Faça uma branch local, altere uma documentação, revise diff, commit, merge após revisão e remova a branch de teste.

## Segurança e rollback

Não reescreva histórico público sem motivo e não coloque segredos em commits; removê-los depois não elimina cópias históricas.

## Referências oficiais

- [Git Documentation](https://git-scm.com/docs)
