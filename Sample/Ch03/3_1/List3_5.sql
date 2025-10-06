/*
所有的聚合函数, 如果以列名为参数, 那么在计算之前就已经把 NULL 排除在外了.
因此, 无论有多少个 NULL 都会被无视.
这与"等价为 0"并不相同

聚合函数会将 NULL 排除在外. 但 COUNT(*) 例外, 并不会排除 NULL.
*/
SELECT SUM(sale_price), SUM(purchase_price)
FROM Product;