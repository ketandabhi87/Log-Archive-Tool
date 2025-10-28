#!/bin/bash
# ============================================================
# log-archive.sh — Simple Log Archiving Tool
# ============================================================
# This script compresses logs from a given directory into a tar.gz archive,
# stores them in a new "archives" directory, and logs the operation with date/time.
#
# Usage:
#   ./log-archive.sh <log-directory>
#
# Example:
#   ./log-archive.sh /var/log
# ============================================================

# Exit on error
set -e

# ----------- Configuration -----------
LOG_DIR="$1"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"
DEST_DIR="./archives"
LOG_FILE="./archive_log.txt"
# -------------------------------------

# ----------- Input Validation -----------
if [ -z "$LOG_DIR" ]; then
    echo "❌ Error: Please provide a log directory."
    echo "Usage: ./log-archive.sh <log-directory>"
    exit 1
fi

if [ ! -d "$LOG_DIR" ]; then
    echo "❌ Error: Directory '$LOG_DIR' does not exist."
    exit 1
fi
# ----------------------------------------

# ----------- Create Destination Directory -----------
mkdir -p "$DEST_DIR"
# ----------------------------------------------------

# ----------- Create Archive -----------
echo "📦 Compressing logs from '$LOG_DIR' ..."
tar -czf "${DEST_DIR}/${ARCHIVE_NAME}" -C "$LOG_DIR" .
echo "✅ Logs archived successfully: ${DEST_DIR}/${ARCHIVE_NAME}"
# --------------------------------------

# ----------- Log the Operation -----------
echo "$(date '+%Y-%m-%d %H:%M:%S') - Archived logs from '${LOG_DIR}' to '${DEST_DIR}/${ARCHIVE_NAME}'" >> "$LOG_FILE"
echo "📝 Archive log updated at: ${LOG_FILE}"
# -----------------------------------------

exit 0
