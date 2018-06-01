# !/bin/bash

# Adding a status file to the htdocs volume will put the app in
# maintenance mode.
cp $SCRIPT_PATH/assets/spinup.html /www/data/status.html

echo "Waiting for DB connection..."

# Wait for the postgres server to spin up.
until PGPASSWORD=$DB_PASS psql -h $DB_HOST -U \
      $DB_USER -d $DB_NAME -c "SHOW data_directory;"
do
	sleep ${POLL_TIMER:=15}
done

# Remove the status file to get out of maintenance mode.
rm /www/data/status.html

$SCRIPT_PATH/launch-cgimap.sh
