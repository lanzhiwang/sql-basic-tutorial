/*
同时使用 WHERE 子句和 GROUP BY 子句.
先根据 WHERE 子句指定的条件进行过滤, 然后再进行汇总处理.

GROUP BY 和 WHERE 并用时 SELECT 语句的执行顺序
FROM -> WHERE -> GROUP BY -> SELECT
*/
SELECT product_type, purchase_price, COUNT(*)
FROM Product
WHERE product_type = '衣服'
GROUP BY purchase_price;