#!/bin/bash

set -e

# Load environment variables
set -a
source ".env"
set +a

SOURCE="$HOME/.openclaw"

echo "Starting backup $(date)"

gcloud storage rsync -r "$SOURCE" "$BUCKET"

echo "Backup completed $(date)"
