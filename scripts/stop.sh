#!/bin/bash
set -e

echo -e "\033[0;35m[INFO] Stopping all services...\033[0m"

echo -e "\033[0;35m[INFO] Stopping WordPress...\033[0m"
cd ~/vps-server/apps/wordpress
docker compose down

echo -e "\033[0;35m[INFO] Stopping Traefik...\033[0m"
cd ~/vps-server/infra/traefik
docker compose down

echo ""
echo -e "\033[0;35m[OK] All services stopped!\033[0m"
