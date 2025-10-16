# Blue Team — Instrucciones rápidas del firewall

## Archivos
- `firewall_basic.sh` (script principal).

## Qué hace (resumen)
El script:
- Guarda una copia de las reglas actuales en `/tmp/iptables-backup.*`.  
- Limpia todas las reglas previas (flush).  
- Establece políticas por defecto: **INPUT DROP**, **FORWARD DROP**, **OUTPUT ACCEPT**.  
- Permite loopback y conexiones establecidas/relacionadas.  
- Abre los puertos **22 (SSH)**, **80 (HTTP)** y **443 (HTTPS)**.  
- Agrega una regla final para bloquear el resto del tráfico entrante.  
(Resumen basado en el contenido del script). :contentReference[oaicite:2]{index=2}

## Cómo ejecutarlo (en la VM)
1. Subir el script a la VM (ej. `/home/usuario/`).
2. Dar permisos y ejecutar:
   ```bash
   chmod +x firewall_basic.sh
   sudo ./firewall_basic.sh
