--选取 NULL 的记录
SELECT product_name, purchase_price
FROM Product
WHERE purchase_price IS NULL;