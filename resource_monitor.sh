#!/bin/bash

LOG_DIR="./logs"
mkdir -p $LOG_DIR
LOG_FILE="$LOG_DIR/system_stats.log"

echo "== MONITOR DE RECURSOS - $(date) ==" >> $LOG_FILE
echo "CPU: $(top -bn1 | grep 'Cpu(s)' | awk '{print $2 + $4 "%"}')" >> $LOG_FILE
echo "Memoria libre: $(free -m | awk '/Mem:/ {print $4 " MB"}')" >> $LOG_FILE
echo "Uso de disco: $(df -h / | awk '/\// {print $5}')" >> $LOG_FILE
echo "Interfaz de red: $(ip -o -4 addr show | awk '{print $2, $4}')" >> $LOG_FILE
echo "-----------------------------------" >> $LOG_FILE
