#!/usr/bin/env bash
# ═══════════════════════════════════════
# STAGING .htpasswd GENERATOR
# Creates .htpasswd with a random password,
# prints credentials once. User must store them
# in their password manager.
# ═══════════════════════════════════════

set -euo pipefail

if ! command -v htpasswd >/dev/null 2>&1; then
    echo "htpasswd not installed. macOS: already included. Linux: apt-get install apache2-utils"
    exit 1
fi

USER="${1:-staging}"
PASS="$(LC_ALL=C tr -dc 'A-Za-z0-9' < /dev/urandom | head -c 20)"

htpasswd -cbB .htpasswd "$USER" "$PASS" >/dev/null

cat <<EOF
.htpasswd generated.

Username: $USER
Password: $PASS

STORE THIS NOW in your password manager. Not shown again.

File: .htpasswd (gitignored by default)
Upload it to your SFTP host at the staging root, alongside .htaccess-staging
renamed to .htaccess. The GitHub Actions staging workflow handles this.
EOF
