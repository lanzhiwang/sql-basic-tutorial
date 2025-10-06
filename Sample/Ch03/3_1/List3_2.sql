--计算 NULL 之外的数据的行数
--COUNT 函数的结果根据参数的不同而不同.
--COUNT(*) 会得到包含 NULL 的数据行数.
--而 COUNT(<列名>) 会得到 NULL 之外的数据行数
SELECT COUNT(purchase_price)
FROM Product;