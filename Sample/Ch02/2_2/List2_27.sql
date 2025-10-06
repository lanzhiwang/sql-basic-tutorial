--错误的 SELECT 语句(一条记录也取不出来)
SELECT product_name, purchase_price
FROM Product
WHERE purchase_price = NULL;