#!/usr/bin/env bash

source ${UTILS_DIR}/text.bash

VERSION_TEXT="WP-CLI installer (via Curl), version $VERSION"

HELP_TEXT="$VERSION_TEXT

This script will install WP-CLI using Curl. This type of installation is very compact but
doesn't allow for easy version switching.

usage: install-via-curl.sh [--version] [--help] [--loud]

Options:
  --version   Print version information
  --help      Print detailed help message
  --loud      Tools will print all messages"

WAITING_TEXT="Installing..."

FINISHED_TEXT="
WP-CLI is now installed. Check if it is working by running '${BIN_DIR}/wp --info'.
For a global installation, add this package's bin directory to your path ($BIN_DIR_ABSOLUTE)."
