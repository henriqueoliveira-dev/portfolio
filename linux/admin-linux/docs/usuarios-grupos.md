# Usuários, grupos e sudo

## Objetivo

Administrar identidades com o menor privilégio, compreender UID/GID e consultar os arquivos de contas sem expor hashes de senha.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

### Consultar uma conta

```bash
id aluno-lab
groups aluno-lab
getent passwd aluno-lab
getent group laboratorio
```

`id` mostra UID, GID e grupos; `groups` resume associações; `getent` consulta as bases configuradas, que podem incluir LDAP. **SIMULAÇÃO / SAÍDA ESPERADA:** `uid=1001(aluno-lab) gid=1001(aluno-lab) groups=1001(aluno-lab),1002(laboratorio)`.

### Criar e alterar em VM

```bash
sudo useradd --create-home --shell /bin/bash aluno-lab
sudo groupadd laboratorio
sudo usermod --append --groups laboratorio aluno-lab
sudo passwd aluno-lab
```

`--create-home` cria o diretório; `--shell` define o shell; `--append --groups` preserva os grupos atuais. Valide com `id aluno-lab`. Em automação, não coloque senha no comando nem no histórico.

### Arquivos e sudo

`/etc/passwd` contém identidade e shell, `/etc/group` associa grupos e `/etc/shadow` guarda hashes protegidos. Nunca publique `/etc/shadow`. Prefira uma regra específica em `/etc/sudoers.d/` validada por `visudo`, em vez de conceder acesso irrestrito.

### Troubleshooting

Se o usuário não enxerga um grupo após `usermod`, encerre a sessão e entre novamente. Se `useradd` disser que o grupo já existe, use `getent group`. Se `sudo` falhar, confirme grupo, sintaxe com `visudo` e logs; não edite `/etc/sudoers` com editor comum.

## Laboratório sugerido

Crie `aluno-lab` somente em uma VM. Conceda acesso a `laboratorio`, crie um arquivo de teste com proprietário e grupo, valide com `ls -l` e remova a conta ao final após confirmar o ambiente.

## Segurança e rollback

Não use nomes, senhas ou dados pessoais reais. `userdel --remove` pode apagar o home; confirme o alvo e tenha rollback.

## Referências oficiais

- [useradd](https://man7.org/linux/man-pages/man8/useradd.8.html)
- [sudoers](https://www.sudo.ws/docs/man/sudoers.man/)
