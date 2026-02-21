#!/usr/bin/env bash
set -euo pipefail

echo "======================================="
echo "🧹 WSL INTERNAL CLEANUP STARTED"
echo "======================================="

########################################
# 1. APT cleanup
########################################
echo "➡️ Cleaning apt cache and unused packages..."
sudo apt clean
sudo apt autoclean
sudo apt autoremove --purge -y

########################################
# 2. Journal logs cleanup
########################################
echo "➡️ Cleaning systemd journal logs (keep last 7 days)..."
sudo journalctl --vacuum-time=7d || true

########################################
# 3. Old log files
########################################
echo "➡️ Removing old log files..."
sudo find /var/log -type f -name "*.log" -delete || true
sudo find /var/log -type f -name "*.gz" -delete || true

########################################
# 4. User cache cleanup
########################################
echo "➡️ Cleaning user caches..."
rm -rf ~/.cache/* || true
rm -rf ~/.npm/_cacache || true
rm -rf ~/.cache/pip || true
rm -rf ~/.cargo/registry ~/.cargo/git || true
rm -rf ~/.gradle/caches || true
rm -rf ~/.m2/repository || true

########################################
# 5. Docker cleanup (if installed)
########################################
if command -v docker >/dev/null 2>&1; then
  echo "➡️ Docker detected, cleaning unused resources..."
  docker system prune -af || true
  docker volume prune -f || true
  docker builder prune -af || true
else
  echo "ℹ️ Docker not installed, skipping Docker cleanup."
fi

########################################
# 6. Snap cleanup (old revisions)
########################################
if command -v snap >/dev/null 2>&1; then
  echo "➡️ Cleaning old snap revisions..."
  snap list --all | awk '/disabled/{print $1, $3}' |
  while read snapname revision; do
    sudo snap remove "$snapname" --revision="$revision"
  done
else
  echo "ℹ️ Snap not installed, skipping snap cleanup."
fi

########################################
# 7. Temp directories
########################################
echo "➡️ Cleaning temp directories..."
sudo rm -rf /tmp/* || true
sudo rm -rf /var/tmp/* || true

########################################
# 8. Summary
########################################
echo "======================================="
echo "✅ WSL CLEANUP COMPLETE"
echo "📊 Disk usage after cleanup:"
df -h /
echo "======================================="
