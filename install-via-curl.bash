#!/bin/bash

# Include settings.
source utils/settings.bash

# Include the link script.
source ${UTILS_DIR}link.bash

# Include text variables.
source ${UTILS_DIR}install-text.bash

# Process command line arguments.
source ${UTILS_DIR}args.bash

# Check the installation to make sure we're not clobbering anything.
# Make the user do the clobbering.
source ${UTILS_DIR}install-check.bash

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
