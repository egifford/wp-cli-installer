# This script requires that the following variables be set:
# $VERSION_TEXT: More complete versioning statement.
# $HELP_TEXT:    Detailed usage instructions

# Setup variables that determine whether to output messages.
DO_VERSION="NO"
DO_HELP="NO"
DO_QUIET_COMPOSER=" --quiet"
DO_QUIET_CURL=" --silent"

# Process command line arguments.
for ARGUMENT in "$@"; do
  case $ARGUMENT in
    "--version")
      DO_VERSION="YES"
      shift
      ;;
    "--help")
      DO_HELP="YES"
      shift
      ;;
    "--loud")
      DO_QUIET_COMPOSER=""
      DO_QUIET_CURL=""
      shift
      ;;
  esac
done

# If version requested, print it out and exit.
if [ "$DO_VERSION" = "YES" ]
then
  echo "$VERSION_TEXT"
  exit 1;
  echo ""
fi

# If help requested, print it out and exit.
if [ "$DO_HELP" = "YES" ]
then
  echo "$HELP_TEXT"
  exit 1;
  echo ""
fi