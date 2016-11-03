# This script requires that the following variables be set:
# $VERSION_TEXT: More complete versioning statement.
# $HELP_TEXT:    Detailed usage instructions

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