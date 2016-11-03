#!/bin/bash

# Setup variables that determine whether to output messages.
DO_VERSION="NO"
DO_HELP="NO"

# Process command line arguments.
for ARGUMENT in "$@"; do
  case $ARGUMENT in
    "--version")
      DO_VERSION="YES"
      shift # past argument=value
      ;;
    "--help")
      DO_HELP="YES"
      shift # past argument=value
      ;;
  esac
done

# If version requested, print it out and exit.
if [ "$DO_VERSION" = "YES" ]
then
  echo "WP-CLI installer, version 0.25.0"
  exit 1;
  echo ""
fi

# If help requested, print it out and exit.
if [ "$DO_HELP" = "YES" ]
then
  echo "WP-CLI installer, version 0.25.0"
  echo ""
  echo "This script will install WP-CLI using Composer. This type of installation isn't as compact as"
  echo "a PHAR installation but does make it easier to move between versions."
  echo ""
  echo "usage: install-via-composer.sh [--version] [--help]"
  exit 1;
  echo ""
fi

# Include the link script.
source utils/link.bash

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
composer --no-dev --optimize-autoloader install --quiet

# Setup a symlink to WP-CLI.
link bin/wp ../vendor/wp-cli/wp-cli/bin/wp

# Let the user know.
echo ""
echo "WP-CLI is now installed. Check if it is working by running 'bin/wp --info'."
echo "For a global installation, add this package's bin directory to your path."