#!/bin/bash

LOG_FILE="/var/log/messages"  # Ruta en CentOS
OUTPUT_FILE="./error_logs.txt"

echo "Analizando logs en busca de errores..."
grep -i "error" "$LOG_FILE" | awk '{print $1, $2, $3, $6}' > "$OUTPUT_FILE"
echo "Errores guardados en: $OUTPUT_FILE"
