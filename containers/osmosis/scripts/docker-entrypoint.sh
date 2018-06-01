# !/bin/bash

# Wait until postgis is ready before trying to import things.
$SCRIPT_PATH/shared/pg-wait-for-connection.sh

echo "Ready."

# Then just hang out as a utility container.
# Minutely replication used to live here but has been disabled for this
# release.
tail -f /dev/null