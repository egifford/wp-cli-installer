# wp-cli-installer
Helper scripts for managing WP-CLI with Composer.

## Prerequisites
* Bash shell.
  * For Windows, Git for Windows runs great.
* An OS that fully supports symbolic links.
  * For Windows, Windows 10 Creator Update resolves many of the problems with symbolic links on Windows.
* Make sure Git is available on your system path.
* Make sure Composer is available on your system path.
  * There is an option to install with Curl, so Composer isn't strictly required.

## Installing the installer
* Create a directory for this project.
  * This will also be where WP-CLI is installed.
* Inside that directory, run (that last period is important): `git clone https://github.com/egifford/composer-installer.git .`
* If not on Windows, make the scripts executable:
 * `chmod 744 install-via-composer.bash && chmod 744 install-via-curl.bash && chmod 744 switch-version-via-composer.bash`

## Installing WP-CLI with Composer
Use the script `install-via-composer.bash`.

This script has a few options:
* Run it without any options to install the latest version of WP-CLI this installer knows about.
* To see a help message: `install-via-composer.bash --help`
* To see version information about this script, use the `--version` option.
  * For example: `install-via-composer.bash --version`
* To see lots of progress messages, use the `--loud` option.
  * For example: `install-via-composer.bash --loud`
  
## Installing WP-CLI with Curl
Use the script `install-via-curl.bash`.

This script has a few options:
* Run it without any options to install the latest available version of WP-CLI.
* To see a help message: `install-via-curl.bash --help`
* To see version information about this script, use the `--version` option.
  * For example: `install-via-curl.bash --version`
* To see lots of progress messages, use the `--loud` option.
  * For example: `install-via-curl.bash --loud`
  
## Which installer should I use?
If you regularly use Composer and have it installed, use the Composer installer. It allows for easily switching versions.

If you don't use Composer, use the Curl installer. It is fast and always pulls from the latest version of WP-CLI.

## Switching versions
If you installed with Composer, you can use another script to switch versions of WP-CLI or update to a new version:
`switch-version-via-composer.bash`

This script has a few options:
* You have to specify your desired version of WP-CLI. For example:
  * `switch-version-via-composer.bash 1.2.1`
* To see a help message: `switch-version-via-composer.bash --help`
* To see version information about this script, use the `--version` option.
  * For example: `switch-version-via-composer.bash --version`
* To see lots of progress messages, use the `--loud` option.
  * For example: `switch-version-via-composer.bash --loud`
