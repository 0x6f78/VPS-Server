#!/bin/bash
set -e

echo -e "\033[0;35m[INFO] Starting all services...\033[0m"

echo -e "\033[0;35m[INFO] Starting Traefik...\033[0m"
cd ~/vps-server/infra/traefik
docker compose up -d
echo -e "\033[0;35m[INFO] Traefik started.\033[0m"

echo -e "\033[0;35m[INFO] Starting WordPress...\033[0m"
cd ~/vps-server/apps/wordpress
docker compose up -d
echo -e "\033[0;35m[INFO] Wordpress started.\033[0m"

echo ""
echo -e "\033[0;35m[OK] All services started!\033[0m"
