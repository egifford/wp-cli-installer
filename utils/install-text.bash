source ${UTILS_DIR}/text.bash

VERSION_TEXT="WP-CLI installer, version $VERSION"

HELP_TEXT="$VERSION_TEXT

This script will install WP-CLI using Composer. This type of installation isn't as compact as a PHAR
installation but does make it easy to move between versions.

usage: install-via-composer.sh [--version] [--help] [--loud]

Options:
  --version   Print version information
  --help      Print detailed help message
  --loud      Tools will print all messages"

WAITING_TEXT="Installing..."

FINISHED_TEXT="
WP-CLI is now installed. Check if it is working by running '${BIN_DIR}/wp --info'.
For a global installation, add this package's bin directory to your path ($BIN_DIR_ABSOLUTE)."
