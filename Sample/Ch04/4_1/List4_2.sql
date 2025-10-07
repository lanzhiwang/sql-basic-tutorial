/*
mysql> describe ProductIns;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| product_id     | char(4)      | NO   | PRI | NULL    |       |
| product_name   | varchar(100) | NO   |     | NULL    |       |
| product_type   | varchar(32)  | NO   |     | NULL    |       |
| sale_price     | int          | YES  |     | 0       |       |
| purchase_price | int          | YES  |     | NULL    |       |
| regist_date    | date         | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql>
*/

INSERT INTO ProductIns (product_id, product_name, product_type, sale_price, purchase_price, regist_date)
VALUES ('0001', 'T恤衫 ', '衣服', 1000, 500, '2009-09-20');

/*

INSERT INTO ProductIns (product_id, product_name, product_type, sale_price, purchase_price, regist_date)
VALUES ('0001', 'T恤衫 ', '衣服', 1000, 500);

*/
