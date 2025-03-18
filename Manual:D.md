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
   
   ![Proyecto1](https://github.com/user-attachments/assets/eba036d7-dc85-4c9e-9f79-19d2d99730f8)

---

## 🚀 Uso de los Scripts  
### *1. Monitor de Recursos (resource_monitor.sh)*  
- *Propósito*: Monitorea CPU, RAM, disco y red.  
- *Ejecución*:  
  bash
  
  ![Proyecto 1 1](https://github.com/user-attachments/assets/9b87374f-aa0e-4861-815d-b1ee3246e5b9)

- *Logs generados*: logs/system_stats.log.  

### *2. Backup Automatizado (backup_manager.sh)*  
- *Propósito*: Crea backups del directorio /home/cristianolarte/documentos.  
- *Ejecución*:  
  bash
  ![Captura desde 2025-03-17 19-44-22](https://github.com/user-attachments/assets/f3b5dfb6-3dc9-40e7-a2d9-10744e544da2)

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
