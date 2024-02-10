#!/bin/bash

# Set the PATH to include the PostgreSQL bin directory
export PATH="/usr/pgsql-15/bin:$PATH"

# Initialize the database if it hasn't been done already
if [ ! -d "/var/lib/pgsql/15/data/base" ]; then
    /usr/pgsql-15/bin/initdb -D /var/lib/pgsql/15/data
    echo "host all  all    0.0.0.0/0  md5" >> /var/lib/pgsql/15/data/pg_hba.conf
    echo "listen_addresses='*'" >> /var/lib/pgsql/15/data/postgresql.conf
fi

# Start PostgreSQL
exec /usr/pgsql-15/bin/postgres -D /var/lib/pgsql/15/data
