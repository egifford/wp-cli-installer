# If vendor directory already exists, WP-CLI is probably already installed.
if [ -d "vendor" ]; then
  echo ""
  echo "A 'vendor' directory is already present from a previous Composer installation. Delete it and then run this script again."
  exit 0
  echo ""
fi  

# If wp symlink already exists, WP-CLI is probably already installed.
if [ -h "${BIN_DIR}wp" ]; then
  echo ""
  echo "A '${BIN_DIR}wp' symlink is already present from a previous installation. Delete it and then run this script again."
  exit 0
  echo ""
fi

# If wp symlink already exists, WP-CLI is probably already installed.
if [ -e "${BIN_DIR}wp-cli.phar" ]; then
  echo ""
  echo "A '${BIN_DIR}wp-cli.phar' file is already present from a previous Curl installation. Delete it and then run this script again."
  exit 0
  echo ""
fi
