#!/usr/bin/env bash
set -euo pipefail
exec certbot \
  certonly \
  --manual \
  --manual-auth-hook=/sbin/auth-hook.sh \
  --manual-cleanup-hook=/sbin/cleanup-hook.sh \
  --manual-public-ip-logging-ok \
  "$@"
