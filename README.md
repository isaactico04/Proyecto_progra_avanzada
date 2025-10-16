\# proyecto de progra avanzada, 1 avance



\#estructura del repo

blue team --> scripts defensivos (firewall) | Jungen Brenes Arce, Kennan Sánchez Garro, Alexandra Mora Brenes |



red team --> scripts ofensivos | Isaac Robles Meza, Santiago Murillo Campos |



\#roles del equipo


Alexandra Mora --> Coordinadora del proyecto y de la documentación

Isaac Robles --> Encargado del Repositorio

Jurgen Brenes --> encargardo del firewall

Kennan Sánchez --> Administrador de la VM

Santiago Murillo --> Encargado de las verificaciones de pruebas



\#instrucciones de uso:

1\. Crear o encender la máquina virtual.  

2\. Copiar el script `blue\_team/firewall\_basic.sh` dentro de la VM.  

3\. Darle permisos de ejecución:  

```bash

chmod +x firewall\_basic.sh



\#ejecutar el script: sudo bash firewall\_basic.sh



\#verificar con: sudo iptables -l -v -n



