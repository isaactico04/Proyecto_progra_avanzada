# Proyecto de Programación Avanzada - 1er Avance

## Estructura del repositorio
- **blue_team/** → scripts defensivos (firewall)  
  *Integrantes:* Jungen Brenes Arce, Kennan Sánchez Garro, Alexandra Mora Brenes  
- **red_team/** → scripts ofensivos  
  *Integrantes:* Isaac Robles Meza, Santiago Murillo Campos  
- **docs/** → documentación y evidencias  

## Roles del equipo
- **Alexandra Mora** → Coordinadora del proyecto y de la documentación  
- **Isaac Robles** → Encargado del repositorio  
- **Jungen Brenes** → Encargado del firewall  
- **Kennan Sánchez** → Administrador de la VM  
- **Santiago Murillo** → Encargado de las verificaciones de pruebas  

## Instrucciones de uso
1. Crear o encender la máquina virtual.  
2. Copiar el script `blue_team/firewall_basic.sh` dentro de la VM.  
3. Darle permisos de ejecución:
   ```bash
   chmod +x firewall_basic.sh

   sudo bash firewall_basic.sh
   
   sudo iptables -L -v -n



