#!/usr/bin/env bash
set -u

# Relatório somente leitura. As informações refletem o host onde o script for executado.
section(){ printf '\n## %s\n' "$1"; }
run(){ if command -v "$1" >/dev/null 2>&1; then shift; "$@" 2>&1 || true; else echo 'ferramenta não disponível'; fi; }

printf '# Relatório do laboratório Linux\nGerado em: %s\n' "$(date '+%F %T')"
section 'Distribuição'; [[ -r /etc/os-release ]] && cat /etc/os-release || echo '/etc/os-release indisponível'
section 'Kernel'; run uname uname -srmo
section 'Hostname'; run hostname hostname
section 'Uptime e carga'; run uptime uptime
section 'CPU'; run lscpu lscpu | sed -n '1,16p'; run nproc nproc
section 'Memória e swap'; run free free -h
section 'Disco'; run df df -h
section 'Interfaces e IP'; run ip ip -brief addr
section 'Rotas'; run ip-route ip route
section 'Usuários conectados'; run who who
section 'Serviços ativos'; run systemctl systemctl --no-pager --type=service --state=running
section 'SSH'; if command -v systemctl >/dev/null 2>&1; then systemctl --no-pager status ssh 2>/dev/null || systemctl --no-pager status sshd 2>/dev/null || echo 'SSH não encontrado'; else echo 'systemctl não disponível'; fi
section 'Samba'; if command -v systemctl >/dev/null 2>&1; then systemctl --no-pager status smbd 2>/dev/null || systemctl --no-pager status smb 2>/dev/null || echo 'Samba não encontrado'; else echo 'systemctl não disponível'; fi
section 'Firewall'; run ufw ufw status verbose; run firewall-cmd firewall-cmd --state; run nft nft list ruleset
section 'Atualizações pendentes'; if command -v apt >/dev/null 2>&1; then apt list --upgradable 2>/dev/null | sed -n '1,30p'; elif command -v dnf >/dev/null 2>&1; then dnf check-update 2>&1 | sed -n '1,30p' || true; else echo 'gerenciador não identificado'; fi
