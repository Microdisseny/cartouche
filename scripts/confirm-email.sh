# !/bin/bash

###
# Patches into the postgres server to confirm an email address on the local
# machine.
#
# Example Usage:
#
#    ./confirm-email.sh email@example.com
#
###

if [ -z "$1" ]; then
	echo "Usage: $0 email@example.com"
	echo "Please provide the email address to activate."
	exit 1
fi

REPO_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../" && pwd )"
CMD="\$SCRIPT_PATH/confirm-email.sh $1"

(cd $REPO_DIR && 
	docker-compose exec postgis /bin/bash -c "$CMD")