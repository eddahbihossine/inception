# Use the penultimate stable version of Debian as base image
FROM debian:bullseye-slim

# Install NGINX and OpenSSL
RUN apt-get update && apt-get install -y nginx openssl && apt-get clean

# Copy custom NGINX configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Generate SSL certificats
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/server.key \
    -out /etc/nginx/server.crt \
    -subj "/C=US/ST=State/L=City/O=Organization/CN=localhost"

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
