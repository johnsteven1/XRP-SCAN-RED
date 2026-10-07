#!/bin/bash
set -e
export PORT=${PORT:-10000}
export PYTHONUNBUFFERED=1
export DATA_DIR=${DATA_DIR:-/tmp/xrp_scanner_data}
mkdir -p "$DATA_DIR/logs" "$DATA_DIR/large_scans"
exec gunicorn --bind 0.0.0.0:$PORT --workers 2 --threads 4 --timeout 300 backend.app:app
