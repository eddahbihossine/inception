#mariadb

docker run --detach --name some-mariadb --env MARIADB_ROOT_PASSWORD=my-secret-pw  mariadb:latest

# Path: srcs/wordpress/script.sh
#wordpress

docker run --detach --name some-mariadb --env MARIADB_USER=example-user --env MARIADB_PASSWORD=my_cool_secret --env MARIADB_DATABASE=exmple-database --env MARIADB_ROOT_PASSWORD=my-secret-pw  mariadb:latest