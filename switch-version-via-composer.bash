#!/bin/bash

# Include the link script.
source ${UTILS_DIR}filesystem.bash

echo "This script will install WP-CLI using Composer. This type of installation isn't as compact as"
echo "a PHAR installation but does make it easier to switch and rollback versions."

# If vendor directory already exists, WP-CLI is probably already installed.
if [ -d "vendor" ]; then
  echo ""
  echo "A 'vendor' directory is already present from a previous installation. Delete it and then run this script again."
  exit 0
  echo ""
fi  

# If wp symlink already exists, WP-CLI is probably already installed.
if [ -h "wp" ]; then
  echo ""
  echo "A 'wp' symlink is already present from a previous installation. Delete it and then run this script again."
  exit 0
  echo ""
fi

# If wp symlink already exists, WP-CLI is probably already installed.
if [ -e "wp-cli.phar" ]; then
  echo ""
  echo "A 'wp-cli.phar' file is already present from a previous installation. Delete it and then run this script again."
  exit 0
  echo ""
fi

# Looks everything is OK.

# Use composer to install WP-CLI. 
composer --no-dev --optimize-autoloader install --quiet 

# Setup a symlink to WP-CLI.
link wp vendor/wp-cli/wp-cli/bin/wp

# Let the user know.
echo "WP-CLI is now installed. Check if it is working by running 'wp --info'."




composer remove wp-cli/wp-cli --quiet
composer --update-no-dev --optimize-autoloader require wp-cli/wp-cli:$1 --quiet
