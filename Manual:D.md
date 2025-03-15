# Manual de Uso - Monitorear Sistemas  
*Repositorio:* [github.com/ElCristinini/monitorear-sistemas](https://github.com/ElCristinini/monitorear-sistemas)  

---

## 📋 Requisitos Previos  
- *Sistema Operativo*: CentOS 7/8/9.  
- *Dependencias*:  
  bash
  sudo dnf install git tar awk grep -y
  
- *Permisos*: Ejecución de scripts (chmod +x).  

---

## 🛠 Instalación  
1. Clonar el repositorio:  
   bash
   git clone git@github.com:ElCristinini/monitorear-sistemas.git
   cd monitorear-sistemas
   

2. Dar permisos de ejecución:  
   bash
   chmod +x resource_monitor.sh backup_manager.sh log_analyzer.sh
   

---

## 🚀 Uso de los Scripts  
### *1. Monitor de Recursos (resource_monitor.sh)*  
- *Propósito*: Monitorea CPU, RAM, disco y red.  
- *Ejecución*:  
  bash
  ./resource_monitor.sh
  
- *Logs generados*: logs/system_stats.log.  

### *2. Backup Automatizado (backup_manager.sh)*  
- *Propósito*: Crea backups del directorio /home/cristianolarte/documentos.  
- *Ejecución*:  
  bash
  ./backup_manager.sh
  
- *Backups generados*: backups/backup_AAAA-MM-DD.tar.gz.  

### *3. Analizador de Logs (log_analyzer.sh)*  
- *Propósito*: Busca errores en /var/log/messages.  
- *Ejecución*:  
  bash
  sudo ./log_analyzer.sh
  
- *Salida*: error_logs.txt.  

---

## ⏰ Automatización con Cron  
Programar ejecución del monitor cada hora:  
1. Editar crontab:  
   bash
   crontab -e
     
2. Añadir esta línea:  
   bash
   0 * * * * /home/cristianolarte/monitorear-sistemas/resource_monitor.sh
     

---

## 🐛 Solución de Errores Comunes  
- *Error de permisos*:  
  bash
  chmod +x nombre_script.sh  # Dar permisos de ejecución
    
- *Cron no funciona*:  
  bash
  sudo tail -f /var/log/cron  # Verificar logs
    
- *GitHub no reconoce cambios*:  
  bash
  git push --force origin main  # Forzar subida (usar con cuidado)
    

---

## 📄 Licencia  
Este proyecto usa la licencia *MIT*. Ver [LICENSE](LICENSE).
