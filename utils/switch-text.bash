source ${UTILS_DIR}/text.bash

VERSION_TEXT="WP-CLI switcher, version $VERSION"

HELP_TEXT="$VERSION_TEXT

This script will switch WP-CLI to a different version using Composer.

usage: switch-version-via-composer.bash <version> [--version] [--help] [--loud]

Options:
  --version   Print version information
  --help      Print detailed help message
  --loud      Tools will print all messages"

WAITING_TEXT="Switching..."

FINISHED_TEXT="
WP-CLI is now installed. Check if it is working by running '${BIN_DIR}/wp --info'.
For a global installation, add this package's bin directory to your path ($BIN_DIR_ABSOLUTE)."
