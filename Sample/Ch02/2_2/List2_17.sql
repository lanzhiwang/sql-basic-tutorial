--SQL 语句中也可以使用运算表达式
SELECT product_name, sale_price, sale_price * 2 AS "sale_price_x2"
FROM Product;