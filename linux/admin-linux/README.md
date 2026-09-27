# Laboratório de Administração Linux

Projeto de estudos práticos e documentação sobre administração Linux. O conteúdo foi reconstruído como um laboratório didático, com prioridade para Debian/Ubuntu e observações sobre diferenças na família RHEL.

> Este repositório não representa uma infraestrutura de produção. Os scripts são exemplos para uso em laboratório controlado e devem ser revisados antes de qualquer execução.

## Objetivo

Estudar administração de sistemas Linux de forma progressiva: usuários, grupos, permissões, processos, recursos, software, rede, serviços, Shell Script, backup, logs, Cron e monitoramento básico.

## Estrutura

- `scripts/`: scripts didáticos reutilizáveis e comentados.
- `docs/`: documentação dos conceitos e comandos.
- `labs/`: exercícios progressivos, sem servidores reais ou credenciais.
- `cron/`: exemplos de agendamento, apenas para documentação.
- `systemd/`: notas sobre unidades e serviços.
- `backups/`: diretório reservado; nenhum backup real é versionado.
- `logs/`: exemplo de log do laboratório.

## Distribuição utilizada

A compatibilidade principal é Debian/Ubuntu. As diferenças para RHEL, Rocky Linux e Fedora são registradas na documentação. Nenhuma distribuição é declarada como utilizada em produção.

## Conteúdo desenvolvido

O núcleo deste laboratório cobre fundamentos Linux, administração, usuários e grupos, processos, software, rede, firewall em nível conceitual, Shell Script, backup didático, Cron, logs e monitoramento básico.

## Roadmap

- [x] Fundamentos Linux
- [x] Administração
- [x] Usuários e grupos
- [x] Processos
- [x] Software
- [x] Rede
- [x] Firewall (conceitos e comandos de consulta)
- [x] Shell Script
- [x] Backup didático
- [x] Cron (documentação)
- [x] Monitoramento básico
- [ ] DNS
- [ ] Apache
- [ ] SELinux
- [ ] Hardening avançado
- [ ] MySQL no Linux
- [ ] MongoDB no Linux
- [ ] Docker
- [ ] Git
- [ ] Ansible
- [ ] Prometheus
- [ ] Kubernetes

Os itens marcados como planejados são temas para estudo futuro e não representam experiência concluída.

## Uso seguro

Leia o script e a documentação antes de executar. Não use este projeto em produção sem revisão. O script de rede usa apenas consultas locais; Nmap só deve ser usado em máquinas e redes próprias ou expressamente autorizadas. Nenhum backup real, senha, IP privado específico ou credencial é armazenado neste repositório.

## Próximos passos

Evoluir os laboratórios gradualmente, registrar resultados reais somente quando forem executados pelo estudante e acrescentar testes em máquinas virtuais descartáveis.
