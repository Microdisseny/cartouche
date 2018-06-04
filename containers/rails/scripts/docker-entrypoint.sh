# !/bin/bash

# Adding a status file to the shared htdocs volume will put the app into
# maintenance mode.
cp $SCRIPT_PATH/shared/assets/spinup.html /www/data/status.html

$SCRIPT_PATH/shared/pg-wait-for-connection.sh

# Remove the status.html file when the Rails server has returned an HTTP
# response.
$SCRIPT_PATH/wait-for-server.sh &

rails db:migrate
rails s -p 3000 -b 0.0.0.0