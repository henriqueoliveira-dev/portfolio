# Laboratório: usuários e grupos

## Objetivo
Criar uma conta e um grupo de laboratório, testar acesso e remover tudo com segurança.

## Pré-requisitos
VM Debian/Ubuntu, snapshot e uma conta com `sudo`. Não use dados reais.

## Passo a passo

```bash
sudo groupadd laboratorio
sudo useradd -m -s /bin/bash aluno-lab
sudo usermod -aG laboratorio aluno-lab
id aluno-lab
```

`groupadd` cria o grupo; `useradd -m` cria conta e home; `usermod -aG` adiciona sem substituir grupos; `id` valida.

```text
SIMULAÇÃO / SAÍDA ESPERADA
uid=1001(aluno-lab) gid=1001(aluno-lab) groups=1001(aluno-lab),1002(laboratorio)
```

## Validação e troubleshooting

Teste `getent passwd aluno-lab` e `getent group laboratorio`. Se a conta não aparecer, confira código de retorno e `/etc/passwd`; se o grupo não aparecer na sessão, faça novo login.

## Limpeza/rollback

Após confirmar que a conta é de laboratório: `sudo userdel --remove aluno-lab` e `sudo groupdel laboratorio`. Confirme o nome antes; `--remove` apaga o home.

## O que foi aprendido
UID/GID, bases de contas, grupos suplementares e menor privilégio. Saídas acima são simulações.
