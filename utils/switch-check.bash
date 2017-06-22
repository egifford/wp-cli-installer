#!/usr/bin/env bash

# If vendor directory already exists, WP-CLI is probably already installed.
if ! [ -d "${VENDOR_DIR_ABSOLUTE}" ]; then
  echo "A '${VENDOR_DIR_ABSOLUTE}' directory is not present from a previous Composer installation. Did you install using Composer?"
  exit 0
  echo ""
fi
