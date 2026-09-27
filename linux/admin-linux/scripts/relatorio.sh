#!/usr/bin/env bash
set -u

echo "# Relatório do laboratório Linux"
echo
for f in /etc/os-release /proc/version; do [[ -r "$f" ]] && { echo "## $f"; cat "$f"; }; done
echo "## Data"; date
echo "## Hostname"; hostname
echo "## Kernel"; uname -srmo
echo "## Uptime"; uptime
echo "## Memória"; command -v free >/dev/null && free -h || echo 'free não disponível'
echo "## Disco"; command -v df >/dev/null && df -h || echo 'df não disponível'
echo "## Interfaces"; command -v ip >/dev/null && ip -brief addr || echo 'ip não disponível'
echo "## Serviços importantes"; command -v systemctl >/dev/null && systemctl --no-pager --type=service --state=running || echo 'systemctl não disponível'
