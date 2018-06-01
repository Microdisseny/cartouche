# !/bin/bash

echo "Confirming email for $1..."

# SQL injection vulnerability, but whoever's running this script already
# has arbitrary execution access to the machine as the database user.
psql -U $DB_USER -d $DB_NAME <<- SQL
	UPDATE users SET status = 'active' WHERE email = '$1';
SQL