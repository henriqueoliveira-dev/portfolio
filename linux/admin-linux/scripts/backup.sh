#!/usr/bin/env bash
set -euo pipefail

# Backup didático. Execute em laboratório e nunca versione os arquivos gerados.
SOURCE_DIR="${BACKUP_SOURCE:-/home/henrique}"
DEST_DIR="${BACKUP_DEST:-$(cd "$(dirname "${BASH_SOURCE[0]}")/../backups" && pwd)}"
LOG_FILE="${ADMIN_LINUX_LOG:-$(cd "$(dirname "${BASH_SOURCE[0]}")/../logs/manutencao.log" && pwd)}"
RETENTION_DAYS="${BACKUP_RETENTION_DAYS:-0}"
STAMP="$(date +%Y%m%d-%H%M%S)"

log(){ mkdir -p "$(dirname "$LOG_FILE")"; printf '[%s] %s\n' "$(date '+%F %T')" "$*" | tee -a "$LOG_FILE"; }
fail(){ log "ERRO: $*"; exit 1; }
command -v tar >/dev/null 2>&1 || fail 'tar não encontrado.'
command -v sha256sum >/dev/null 2>&1 || fail 'sha256sum não encontrado.'
[[ -d "$SOURCE_DIR" ]] || fail "origem não encontrada: $SOURCE_DIR"
[[ "$RETENTION_DAYS" =~ ^[0-9]+$ ]] || fail 'BACKUP_RETENTION_DAYS deve ser inteiro não negativo.'
mkdir -p "$DEST_DIR"
[[ -w "$DEST_DIR" ]] || fail "destino sem permissão de escrita: $DEST_DIR"

# O teste de espaço é apenas informativo; o tar ainda é a validação definitiva.
df -P "$DEST_DIR" | tail -1 | awk '{print "Espaço disponível no destino: " $4 " KB"}' | while read -r line; do log "$line"; done
ARCHIVE="$DEST_DIR/backup-${STAMP}.tar.gz"
CHECKSUM="$ARCHIVE.sha256"
tar -czf "$ARCHIVE" --exclude='*.cache' --exclude='__pycache__' -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"
sha256sum "$ARCHIVE" > "$CHECKSUM"
tar -tzf "$ARCHIVE" >/dev/null
log "Backup criado e validado: $ARCHIVE"
log "Checksum registrado: $CHECKSUM"

if (( RETENTION_DAYS > 0 )); then
  find "$DEST_DIR" -maxdepth 1 -type f -name 'backup-*.tar.gz' -mtime "+$RETENTION_DAYS" -print -delete
  find "$DEST_DIR" -maxdepth 1 -type f -name 'backup-*.tar.gz.sha256' -mtime "+$RETENTION_DAYS" -print -delete
  log "Retenção aplicada: arquivos com mais de ${RETENTION_DAYS} dias."
fi
