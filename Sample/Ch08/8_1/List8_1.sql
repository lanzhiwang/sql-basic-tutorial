SELECT product_name, product_type, sale_price
FROM Product
ORDER BY product_type ASC, sale_price ASC;

/*

mysql> SELECT product_name, product_type, sale_price
    -> FROM Product
    -> ORDER BY product_type ASC, sale_price ASC;
+--------------+--------------+------------+
| product_name | product_type | sale_price |
+--------------+--------------+------------+
| 圆珠笔       | 办公用品     |        100 |
| 打孔器       | 办公用品     |        500 |
| 叉子         | 厨房用具     |        500 |
| 擦菜板       | 厨房用具     |        880 |
| 菜刀         | 厨房用具     |       3000 |
| 高压锅       | 厨房用具     |       6800 |
| T恤衫        | 衣服         |       1000 |
| 运动T恤      | 衣服         |       4000 |
+--------------+--------------+------------+
8 rows in set (0.00 sec)

mysql>

*/

SELECT product_name, product_type, sale_price,
       RANK() OVER (PARTITION BY product_type ORDER BY sale_price) AS ranking
FROM Product;

/*

mysql> SELECT product_name, product_type, sale_price,
    ->        RANK() OVER (PARTITION BY product_type ORDER BY sale_price) AS ranking
    -> FROM Product;
+--------------+--------------+------------+---------+
| product_name | product_type | sale_price | ranking |
+--------------+--------------+------------+---------+
| 圆珠笔       | 办公用品     |        100 |       1 |
| 打孔器       | 办公用品     |        500 |       2 |
| 叉子         | 厨房用具     |        500 |       1 |
| 擦菜板       | 厨房用具     |        880 |       2 |
| 菜刀         | 厨房用具     |       3000 |       3 |
| 高压锅       | 厨房用具     |       6800 |       4 |
| T恤衫        | 衣服         |       1000 |       1 |
| 运动T恤      | 衣服         |       4000 |       2 |
+--------------+--------------+------------+---------+
8 rows in set (0.01 sec)

mysql>

*/


