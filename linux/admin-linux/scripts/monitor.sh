#!/usr/bin/env bash
set -u

# Coleta local e somente leitura. Ferramentas opcionais ausentes não interrompem o relatório.
section(){ printf '\n## %s\n' "$1"; }
run(){ if command -v "$1" >/dev/null 2>&1; then shift; "$@" 2>&1 || true; else echo "ferramenta não disponível"; fi; }

printf '# Monitoramento local\nData: %s\n' "$(date '+%F %T')"
section 'Sistema'; run hostname hostname; run uptime uptime; run uname uname -srmo
section 'CPU'; run lscpu lscpu | sed -n '1,12p'; run nproc nproc
section 'Memória e swap'; run free free -h
section 'Armazenamento'; run df df -h
section 'Processos'; run ps ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 12
section 'Rede'; run ip ip -brief addr; run ip-route ip route; run ss ss -tuln
section 'Conectividade'; run ping ping -c 2 -W 2 127.0.0.1
section 'Serviços'; run systemctl systemctl --no-pager --type=service --state=running
section 'SSH'; if command -v systemctl >/dev/null 2>&1; then systemctl --no-pager status ssh 2>/dev/null || systemctl --no-pager status sshd 2>/dev/null || echo 'SSH não encontrado'; else echo 'systemctl não disponível'; fi
section 'Samba'; if command -v systemctl >/dev/null 2>&1; then systemctl --no-pager status smbd 2>/dev/null || systemctl --no-pager status smb 2>/dev/null || echo 'Samba não encontrado'; else echo 'systemctl não disponível'; fi
section 'Firewall'; run ufw ufw status verbose; run firewall-cmd firewall-cmd --state; run nft nft list ruleset
section 'Temperatura'; run sensors sensors
section 'Atualizações'; if command -v apt >/dev/null 2>&1; then apt list --upgradable 2>/dev/null | sed -n '1,20p'; elif command -v dnf >/dev/null 2>&1; then dnf check-update 2>&1 | sed -n '1,20p' || true; else echo 'gerenciador não identificado'; fi
