# Usuários e grupos

Usuários possuem UID; grupos possuem GID. As bases tradicionais são `/etc/passwd`, `/etc/group` e `/etc/shadow`. Senhas devem ser gerenciadas com `passwd`, nunca gravadas em scripts.

```bash
id usuario
groups usuario
getent passwd usuario
getent group grupo
sudo useradd -m -s /bin/bash aluno-lab
sudo groupadd laboratorio
sudo usermod -aG laboratorio aluno-lab
sudo passwd aluno-lab
```

Para remover contas em um laboratório, confirme o alvo antes de usar `userdel`. O princípio do menor privilégio deve orientar `sudo` e a associação a grupos.
