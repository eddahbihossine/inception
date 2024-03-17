# Use the penultimate stable version of Debian as base image
FROM debian:bullseye-slim

# Install MariaDB
RUN apt-get update && apt-get install -y mariadb-server mariadb-client && apt-get clean

# Expose MariaDB port
EXPOSE 3306

# Start MariaDB
CMD ["mysqld", "--character-set-server=utf8mb4", "--collation-server=utf8mb4_unicode_ci"]
