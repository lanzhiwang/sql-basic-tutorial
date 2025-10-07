SELECT product_type, SUM(sale_price)
FROM Product
GROUP BY product_type;