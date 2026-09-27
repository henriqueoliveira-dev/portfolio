02-localizacao-de-arquivos.md

# Localização de Arquivos

## locate

Localiza arquivos pelo nome utilizando um banco de dados.

```bash
locate .bashrc
locate passwd
locate -i python
```

---

## find

Procura arquivos diretamente no disco.

```bash
find /etc
find /etc -name passwd
find /home -type f
find /usr/share -size +10M
```

---

## grep

Procura palavras dentro de arquivos.

```bash
grep root /etc/passwd
grep -i linux arquivo.txt
grep -r root /etc
```

---

## Resumo

| Comando | Função                    |
| ------- | ------------------------- |
| locate  | Busca rápida por nome     |
| find    | Busca completa no disco   |
| grep    | Procura texto em arquivos |

