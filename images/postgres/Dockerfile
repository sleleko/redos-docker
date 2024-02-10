FROM registry.red-soft.ru/ubi7/ubi-minimal
MAINTAINER Sergey S. Leleko <w@leleko.ru>
# Install PostgreSQL
RUN dnf install -y postgresql15-server

# Create the volume directory and set correct permissions
RUN mkdir -p /var/lib/pgsql/15/data && \
    chown -R postgres:postgres /var/lib/pgsql/15

# Copy the entrypoint script and give it the correct permissions
# before switching to the postgres user
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Switch to the postgres user
USER postgres

# PostgreSQL data directory
VOLUME ["/var/lib/pgsql/15/data"]

# Set the entrypoint to the initialization script
ENTRYPOINT ["/entrypoint.sh"]

# By default, start the PostgreSQL server
CMD ["postgres", "-D", "/var/lib/pgsql/15/data"]
