#!/bin/bash
set -e

echo "Guardando una copia de las reglas actuales por seguridad..."
iptables-save > /tmp/iptables-backup.$(date +%s)

echo "Limpiando todas las reglas existentes..."
iptables -F
iptables -X
iptables -Z
iptables -t nat -F
iptables -t nat -X
iptables -t mangle -F
iptables -t mangle -X

echo "Estableciendo políticas predeterminadas..."

iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT

echo "Permitimos el tráfico local (loopback)..."
iptables -A INPUT -i lo -j ACCEPT

echo "Permitimos conexiones ya establecidas o relacionadas..."
iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT



echo "Permitiendo conexión SSH (puerto 22)..."
iptables -A INPUT -p tcp --dport 22 -m conntrack --ctstate NEW -j ACCEPT

echo "Permitiendo tráfico web HTTP (puerto 80)..."
iptables -A INPUT -p tcp --dport 80 -m conntrack --ctstate NEW -j ACCEPT

echo "Permitiendo tráfico web seguro HTTPS (puerto 443)..."
iptables -A INPUT -p tcp --dport 443 -m conntrack --ctstate NEW -j ACCEPT



echo "Bloqueando todo el tráfico entrante no permitido..."
iptables -A INPUT -j DROP

echo "Configuración completada con éxito."
echo "Puedes revisar las reglas activas usando: sudo iptables -L -n -v"
echo "Una copia de las reglas anteriores quedó guardada en /tmp/iptables-backup.*"
