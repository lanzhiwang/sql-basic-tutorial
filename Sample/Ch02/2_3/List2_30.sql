--选取出销售单价大于等于 1000 的记录
SELECT product_name, product_type, sale_price
FROM Product
WHERE sale_price >= 1000;