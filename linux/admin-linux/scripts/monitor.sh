#!/usr/bin/env bash
set -u

# Coleta consultas locais; ferramentas opcionais ausentes não interrompem o relatório.
run(){ command -v "$1" >/dev/null 2>&1 && { echo; echo "## $1"; shift; "$@" 2>&1 || true; } || echo "## $1: ferramenta não disponível"; }
echo "# Monitoramento local"
echo "Data: $(date '+%F %T')"
run hostname hostname
run uptime uptime
run free free -h
run df df -h
run ip ip -brief addr
run ip-route ip route
run ss ss -tuln
run systemctl systemctl --no-pager --type=service --state=running
run ssh systemctl --no-pager status ssh
run smb systemctl --no-pager status smbd
run ufw ufw status verbose
run firewall-cmd firewall-cmd --state
run sensors sensors
