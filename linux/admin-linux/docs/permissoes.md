# Permissões

Permissões tradicionais são leitura (`r`), escrita (`w`) e execução (`x`) para proprietário, grupo e outros.

```bash
ls -l arquivo
chmod u+x script.sh
chmod 640 arquivo
chown usuario:grupo arquivo
umask
```

Evite `chmod 777`. Prefira o menor conjunto de permissões necessário e confirme o caminho antes de usar `chown` ou `chmod` recursivo.
