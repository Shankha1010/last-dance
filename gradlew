#!/usr/bin/env bash
set -e
if [ -x "./gradlew" ] && [ "$0" != "./gradlew" ]; then
  exec ./gradlew "$@"
fi
# Try to use system gradle if available
if command -v gradle >/dev/null 2>&1; then
  gradle "$@"
else
  echo "No gradle found. On Codemagic the system gradle should be available. Exiting."
  exit 1
fi
