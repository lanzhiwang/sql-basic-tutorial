# MySQL

```bash
docker pull mysql:8.0.43-bookworm

docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:8.0.43-bookworm

docker run -it --rm --name mysql-client -v "$(pwd)":/sql-basic-tutorial -w /sql-basic-tutorial mysql:8.0.43-bookworm bash

mysql -h172.17.0.3 -uroot -p

```
