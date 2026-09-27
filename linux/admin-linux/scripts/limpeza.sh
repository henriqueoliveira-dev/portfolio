#!/usr/bin/env bash
set -euo pipefail

# Limpeza limitada a uma área temporária configurável. Nunca usa rm -rf /.
TARGET_DIR="${CLEANUP_TARGET:-${TMPDIR:-/tmp}/admin-linux-lab}"
LOG_FILE="${ADMIN_LINUX_LOG:-$(cd "$(dirname "${BASH_SOURCE[0]}")/../logs/manutencao.log" && pwd)}"
log(){ mkdir -p "$(dirname "$LOG_FILE")"; printf '[%s] %s\n' "$(date '+%F %T')" "$*" | tee -a "$LOG_FILE"; }

if [[ "$TARGET_DIR" == "/" || "$TARGET_DIR" == "/home" || "$TARGET_DIR" == "/etc" || "$TARGET_DIR" == "/var" ]]; then
  log "ERRO: alvo recusado por segurança: $TARGET_DIR"; exit 1
fi
mkdir -p "$TARGET_DIR"
find "$TARGET_DIR" -mindepth 1 -maxdepth 1 -type f -name '*.tmp' -print -delete
log "Limpeza limitada concluída em $TARGET_DIR"
