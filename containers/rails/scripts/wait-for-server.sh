# !/bin/bash

# Wait for the Rails server to spin up.
until $(curl -sf -o /dev/null http://localhost:3000); do
    echo "Waiting for server to start..."
    sleep 5
done

echo "Server ready."

# Take server out of maintenance mode by removing the status.html file in the
# shared htdocs volume that nginx checks.
rm /www/data/status.html