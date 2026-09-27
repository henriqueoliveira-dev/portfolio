# Laboratório de Administração Linux

Projeto de estudos práticos, documentação e automação segura para administração Linux. O núcleo foi organizado como um laboratório didático, não como infraestrutura empresarial ou experiência profissional inventada.

## Objetivo

Desenvolver uma base progressiva em Linux, administração de sistemas, Bash, rede, serviços, segurança, backup e monitoramento. Temas avançados como Docker, Ansible, Kubernetes e Prometheus aparecem documentados como etapas de estudo e laboratórios controlados; não são apresentados como servidores reais já configurados.

## Competências demonstradas

- leitura da hierarquia Linux e investigação somente leitura;
- usuários, grupos, UID/GID, permissões, `sudo`, `chmod`, `chown` e `umask`;
- processos, jobs, CPU, memória, swap e armazenamento;
- pacotes em Debian/Ubuntu e diferenças para RHEL/Rocky/Fedora;
- interfaces, rotas, DNS, portas, SSH, Samba e firewall;
- Bash com validação, logs, códigos de retorno e tratamento básico de falhas;
- backup didático com checksum, validação e restauração;
- Cron, systemd, manutenção e monitoramento local;
- fundamentos documentais de Apache, MySQL, MongoDB, Docker, Git, Ansible, SELinux, Kubernetes e Prometheus.

## Arquitetura

```text
admin-linux/
├── README.md
├── docs/          # módulos conceituais e referências oficiais
├── scripts/       # automações Shell reutilizáveis
├── labs/          # exercícios progressivos e reversíveis
├── cron/          # exemplos de agendamento, sem instalação automática
├── systemd/       # ciclo de vida de serviços e timers
├── backups/       # reservado; arquivos gerados não entram no Git
└── logs/          # log de exemplo; execuções reais devem ficar locais
```

## Scripts

`manutencao.sh` orquestra `backup.sh`, `limpeza.sh`, `monitor.sh` e `relatorio.sh`. O backup usa `BACKUP_SOURCE`, `BACKUP_DEST` e `BACKUP_RETENTION_DAYS`; o padrão é `/home/henrique`, conforme o laboratório original, e uma origem inexistente gera erro sem copiar nada. A limpeza limita-se a arquivos `.tmp` em uma área temporária configurável. Monitoramento e relatório são somente leitura.

Exemplo seguro com diretório fictício:

```bash
TMP=$(mktemp -d)
mkdir -p "$TMP/origem" "$TMP/destino"
printf 'exemplo\n' > "$TMP/origem/arquivo.txt"
BACKUP_SOURCE="$TMP/origem" BACKUP_DEST="$TMP/destino" ADMIN_LINUX_LOG="$TMP/lab.log" ./scripts/backup.sh
```

As saídas geradas por uma máquina real podem conter hostname, usuários, IPs e serviços. Não publique relatórios reais sem revisar esses dados.

## Distribuições

A compatibilidade principal é Debian/Ubuntu. `docs/distribuicoes.md` registra a diferença para RHEL, Rocky Linux e Fedora, especialmente `apt/dpkg` versus `dnf/rpm`, além de nomes de serviços que podem variar.

## Laboratórios

Os exercícios cobrem usuários, processos, rede, segurança, servidores locais, bancos de dados, Docker, automação e monitoramento. Use uma VM, snapshot e dados fictícios. Cada laboratório informa objetivo, preparação, validação, problemas comuns e limpeza/rollback quando aplicável.

## Segurança e limitações

Não há credenciais, IPs reais, backups pessoais, servidores públicos ou resultados inventados neste projeto. Nmap deve ser usado somente em alvos próprios ou autorizados. Alterações de firewall, SSH, usuários, systemd, SELinux e pacotes exigem console de recuperação e revisão. O projeto não executa instalação, agendamento ou hardening automaticamente.

## Roadmap honesto

- [x] Fundamentos Linux e hierarquia de diretórios
- [x] Administração, usuários, grupos e permissões
- [x] Processos e recursos
- [x] Software e atualizações
- [x] Rede, SSH, firewall e Bash
- [x] Backup didático, Cron, systemd e monitoramento básico
- [ ] Laboratórios executados em múltiplas distribuições
- [ ] DNS/BIND e Apache em VM própria
- [ ] MySQL/MariaDB e MongoDB em VM própria
- [ ] Docker e Compose
- [ ] Ansible com localhost
- [ ] SELinux e hardening avançado
- [ ] Prometheus e exporters
- [ ] Kubernetes local

Itens não marcados como concluídos são planejamento de estudo, não experiência profissional.

## Referências

As referências oficiais usadas para validar conceitos e comandos estão em [`docs/referencias.md`](./docs/referencias.md). Cada módulo também indica fontes específicas.
