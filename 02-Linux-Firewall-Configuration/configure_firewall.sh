
#!/bin/bash

# Linux Firewall Configuration using UFW
# Project 2 - Cybersecurity Portfolio

if [ "$(id -u)" -ne 0 ]; then
    exec sudo /bin/bash "$0" "$@"
fi

set -e

echo "=================================="
echo " UFW Firewall Configuration"
echo "=================================="

if ! command -v ufw >/dev/null 2>&1; then
    echo "Error: UFW is not installed."
    exit 1
fi

echo "[1] Setting default incoming policy..."
ufw default deny incoming

echo "[2] Setting default outgoing policy..."
ufw default allow outgoing

echo "[3] Configuring firewall logging..."
ufw logging low

echo "[4] Current firewall configuration:"
ufw status verbose

echo
read -r -p "Enable UFW firewall now? (y/n): " answer

if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
    ufw --force enable
    echo "Firewall enabled successfully."
else
    echo "Firewall activation skipped."
fi

echo
echo "Final firewall status:"
ufw status verbose

echo "Configuration complete."
