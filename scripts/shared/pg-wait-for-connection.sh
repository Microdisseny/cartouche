# !/bin/bash

# Wait for the postgres server to spin up.
until PGPASSWORD=$DB_PASS psql -h $DB_HOST -U \
      $DB_USER -d development -c "\q" 2> /dev/null
do
	echo "Waiting for database..."
	sleep ${POLL_TIMER:=15}
done