# !/bin/bash

# Adding a status file to the htdocs volume will put the app in
# maintenance mode.
cp $SCRIPT_PATH/assets/spinup.html /www/data/status.html

$SCRIPT_PATH/shared/pg-wait-for-connection.sh

# Remove the status file to get out of maintenance mode.
rm /www/data/status.html

$SCRIPT_PATH/launch-cgimap.sh
