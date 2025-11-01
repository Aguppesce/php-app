#!/bin/bash

# Start MySQL in the background
docker-entrypoint.sh mysqld &

# Wait for MySQL to be ready
until mysqladmin ping --silent; do
    echo "Waiting for MySQL..."
    sleep 2
done

# Run the SQL command
mysql -uroot -prootpass -e \
"ALTER USER 'sampleuser'@'%' IDENTIFIED WITH mysql_native_password BY 'samplepass'; FLUSH PRIVILEGES;"

# Bring MySQL process to foreground
wait