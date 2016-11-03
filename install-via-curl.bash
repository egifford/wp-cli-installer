#!/bin/bash

# Include the link script.
source utils/link.bash

echo "This script will install WP-CLI as a PHAR using Curl. This type of installation is very compact"
echo "but does not make it easier to switch and rollback versions."

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
curl --silent -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 

# Setup a symlink to WP-CLI.
link wp wp-cli.phar

# Let the user know.
echo ""
echo "WP-CLI is now installed. Check if it is working by running 'wp --info'."
