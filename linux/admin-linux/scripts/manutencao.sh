#!/usr/bin/env bash
set -euo pipefail

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LOG_FILE="${ADMIN_LINUX_LOG:-$BASE_DIR/logs/manutencao.log}"
mkdir -p "$(dirname "$LOG_FILE")"
log(){ printf '[%s] %s\n' "$(date '+%F %T')" "$*" | tee -a "$LOG_FILE"; }
run_step(){ local name="$1"; shift; log "Iniciando: $name"; if "$@" >>"$LOG_FILE" 2>&1; then log "Concluído: $name"; else log "Falhou: $name"; return 1; fi; }

log 'Início da manutenção didática.'
run_step backup "$BASE_DIR/scripts/backup.sh" || log 'Backup não executado; verifique a origem configurada.'
run_step limpeza "$BASE_DIR/scripts/limpeza.sh"
run_step monitor "$BASE_DIR/scripts/monitor.sh"
run_step relatorio "$BASE_DIR/scripts/relatorio.sh"
log 'Fim da manutenção didática.'
