#!/bin/bash

# Include the link script.
source utils/link.bash

# Include text variables.
source utils/text.bash

# Process command line arguments.
source utils/args.bash

# If vendor directory already exists, WP-CLI is probably already installed.
if [ -d "vendor" ]; then
  echo ""
  echo "A 'vendor' directory is already present from a previous installation. Delete it and then run this script again."
  exit 0
  echo ""
fi  

# If wp symlink already exists, WP-CLI is probably already installed.
if [ -h "bin/wp" ]; then
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

# Let the user know that something is happening.
echo "Installing..."

# Use composer to install WP-CLI. 
curl --silent --output bin/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 

# Setup a symlink to WP-CLI.
link bin/wp wp-cli.phar

# Let the user know.
echo ""
echo "WP-CLI is now installed. Check if it is working by running 'bin/wp --info'."
echo "For a global installation, add this package's bin directory to your path."
