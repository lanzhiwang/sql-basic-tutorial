--SQL Server, DB2, PostgreSQL, MySQL
/*
交叉联结时无法使用内联结和外联结中所使用的 ON 子句,
这是因为交叉联结是对两张表中的全部记录进行交叉组合,
因此结果中的记录数通常是两张表中行数的乘积.
本例中, 因为 ShopProduct 表存在 13 条记录, Product 表存在 8 条记录,
所以结果中就包含了 13 × 8 = 104 条记录.
*/
SELECT SP.shop_id, SP.shop_name, SP.product_id, P.product_name
FROM ShopProduct AS SP
CROSS JOIN Product AS P;