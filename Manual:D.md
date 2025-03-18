# Manual de Uso - Monitorear Sistemas  
*Repositorio:* [github.com/ElCristinini/monitorear-sistemas](https://github.com/ElCristinini/monitorear-sistemas)  

---

## 📋 Requisitos Previos  
- *Sistema Operativo*: CentOS 7/8/9.
-  ![Captura desde 2025-03-17 19-59-10](https://github.com/user-attachments/assets/2e45a32f-d35a-410a-b8d3-c1ed69481d32)
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
  ![Captura desde 2025-03-17 19-46-29](https://github.com/user-attachments/assets/779520e0-9e12-475d-a63b-85fec43f2041)

- *Salida*: error_logs.txt.  

---

## ⏰ Automatización con Cron  
Programar ejecución del monitor cada hora:  
1. Editar crontab:  
   bash
   crontab -e
     ![Captura desde 2025-03-17 19-47-18](https://github.com/user-attachments/assets/fbbb9798-f133-4d2b-82d3-f30a9a9f3352)

2. Añadir esta línea:  
   bash
   0 * * * * /home/cristianolarte/monitorear-sistemas/resource_monitor.sh
     ![Captura desde 2025-03-17 19-47-51](https://github.com/user-attachments/assets/abb97910-2406-4b21-acf5-9bacd9ed026d)


---
3. 👥 Trabajo Colaborativo con Git y GitHub

    Clonar el Repositorio:![Captura desde 2025-03-17 19-50-16](https://github.com/user-attachments/assets/d2e0daf5-2b5b-49c3-855e-83cf6125d960)

Crear Ramas para cada Funcionalidad:

git checkout -b nombre_funcionalidad
![Captura desde 2025-03-17 19-51-40](https://github.com/user-attachments/assets/fc4e74e9-236c-4c44-897e-a645a2bc8f76)

Realizar Commits Descriptivos:
Asegúrate de describir los cambios y las funcionalidades implementadas.
Subir Cambios y Resolver Conflictos:
Una vez listos, sube los cambios y, de ser necesario, realiza un Pull Request para fusionar con la rama principal (main).

## 🐛 Solución de Errores Comunes  
- *Error de permisos*:  
  bash
  # Dar permisos de ejecución
    ![Captura desde 2025-03-17 19-52-48](https://github.com/user-attachments/assets/d535f85f-666b-4f8d-8707-69368db3427a)

- *Cron no funciona*:  
  bash
   # Verificar logs
  ![Captura desde 2025-03-17 19-54-37](https://github.com/user-attachments/assets/63976867-a248-403f-aac8-0f1f99260875)

    
- *GitHub no reconoce cambios*:  
  bash
    # Forzar subida (usar con cuidado)
  ![Captura desde 2025-03-17 19-56-07](https://github.com/user-attachments/assets/e0b2856f-05ce-40be-855d-971bc624e1a5)

  📜 Licencia
  Este proyecto utiliza la licencia MIT. Ver LICENSE.
---

## 📄 Licencia  
Este proyecto usa la licencia *MIT*. Ver [LICENSE](LICENSE).
