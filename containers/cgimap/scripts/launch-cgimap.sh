#! /bin/bash

##
# The configuration for the API server can be set using environment
# variables: CGIMAP_HOST, CGIMAP_DBNAME, CGIMAP_USERNAME,
# CGIMAP_PASSWORD, CGIMAP_PIDFILE, CGIMAP_LOGFILE, CGIMAP_MEMCACHE,
# CGIMAP_RATELIMIT and CGIMAP_MAXDEBT.
##

export CGIMAP_HOST=$DB_HOST
export CGIMAP_DBNAME=$DB_NAME
export CGIMAP_USERNAME=$DB_USER
export CGIMAP_PASSWORD=$DB_PASS

/usr/local/bin/openstreetmap-cgimap --port=3001 --instances=30