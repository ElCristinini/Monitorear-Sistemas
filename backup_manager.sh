#!/bin/bash

DIRECTORIO_A_RESGUARDAR="/home/cristianolarte/Documentos"  # ¡Cambia esta ruta!
BACKUP_DIR="./backups"
mkdir -p $BACKUP_DIR
FECHA=$(date +%Y-%m-%d)

tar -czf "$BACKUP_DIR/backup_$FECHA.tar.gz" "$DIRECTORIO_A_RESGUARDAR"
echo "Backup creado en $BACKUP_DIR/backup_$FECHA.tar.gz"
