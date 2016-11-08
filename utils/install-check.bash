# If vendor directory already exists, WP-CLI is probably already installed.
if [ -d "${VENDOR_DIR_ABSOLUTE}" ]; then
  echo "A '${VENDOR_DIR_ABSOLUTE}' directory is already present from a previous Composer installation. Delete it and then run this script again."
  exit 0
  echo ""
fi  

# If wp symlink already exists, WP-CLI is probably already installed.
if [ -h "${BIN_DIR_ABSOLUTE}/wp" ]; then
  echo "A '${BIN_DIR_ABSOLUTE}/wp' symlink is already present from a previous installation. Delete it and then run this script again."
  exit 0
  echo ""
fi

# If wp symlink already exists, WP-CLI is probably already installed.
if [ -e "${BIN_DIR_ABSOLUTE}/wp-cli.phar" ]; then
  echo "A '${BIN_DIR_ABSOLUTE}/wp-cli.phar' file is already present from a previous Curl installation. Delete it and then run this script again."
  exit 0
  echo ""
fi
