# !/bin/bash

$SCRIPT_PATH/shared/pg-wait-for-connection.sh

rails db:migrate
rails s -p 3000 -b 0.0.0.0