#!/usr/bin/env bash
set -euo pipefail

# Backup didático: não versiona arquivos gerados e não usa credenciais.
SOURCE_DIR="${BACKUP_SOURCE:-/home/henrique}"
DEST_DIR="${BACKUP_DEST:-$(cd "$(dirname "${BASH_SOURCE[0]}")/../backups" && pwd)}"
LOG_FILE="${ADMIN_LINUX_LOG:-$(cd "$(dirname "${BASH_SOURCE[0]}")/../logs/manutencao.log" && pwd)}"
STAMP="$(date +%Y%m%d-%H%M%S)"

log(){ mkdir -p "$(dirname "$LOG_FILE")"; printf '[%s] %s\n' "$(date '+%F %T')" "$*" | tee -a "$LOG_FILE"; }
command -v tar >/dev/null 2>&1 || { log 'ERRO: tar não encontrado.'; exit 1; }
[[ -d "$SOURCE_DIR" ]] || { log "Origem não encontrada: $SOURCE_DIR (nada foi copiado)"; exit 1; }
mkdir -p "$DEST_DIR"
ARCHIVE="$DEST_DIR/backup-${STAMP}.tar.gz"
tar -czf "$ARCHIVE" --exclude='*.cache' --exclude='__pycache__' -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"
log "Backup didático criado em $ARCHIVE"
