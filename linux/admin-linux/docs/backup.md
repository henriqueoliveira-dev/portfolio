# Backup

Backup precisa considerar destino, retenção, espaço, exclusões, criptografia e restauração. O `scripts/backup.sh` é uma demonstração: usa uma origem configurável, não salva dados reais no Git e falha se a origem não existir.

Teste a restauração periodicamente. Backup que nunca foi restaurado não deve ser considerado validado.
