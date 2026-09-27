03-links.md

# Links no Linux

## Link físico

```bash
ln arquivo.txt copia.txt
```

Os dois nomes apontam para o mesmo conteúdo.

---

## Link simbólico

```bash
ln -s arquivo.txt atalho.txt
```

Cria um atalho para outro arquivo.

---

## Verificando

```bash
ls -li
```

Mostra o inode dos arquivos.

---

## Resumo

| Comando | Função              |
| ------- | ------------------- |
| ln      | Cria link físico    |
| ln -s   | Cria link simbólico |
| ls -li  | Mostra os inodes    |

