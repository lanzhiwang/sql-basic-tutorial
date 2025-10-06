# MySQL

```bash
docker pull mysql:8.0.43-bookworm

docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:8.0.43-bookworm

docker inspect --format '{{.NetworkSettings.IPAddress}}' some-mysql

docker run -it --rm \
--name mysql-client \
-v "$(pwd)":/sql-basic-tutorial \
-w /sql-basic-tutorial \
-e some.mysql.host=$(docker inspect --format '{{.NetworkSettings.IPAddress}}' some-mysql) \
-e LANG=C.UTF-8 \
--add-host some.mysql.host:$(docker inspect --format '{{.NetworkSettings.IPAddress}}' some-mysql) \
mysql:8.0.43-bookworm bash

export LANG=C.UTF-8

mysql -h some.mysql.host -u root -p

```
