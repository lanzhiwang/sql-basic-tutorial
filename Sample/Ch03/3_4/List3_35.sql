SELECT product_id, product_name, sale_price, purchase_price
FROM Product
ORDER BY sale_price DESC, product_id ASC;

SELECT product_id, product_name, sale_price, purchase_price
FROM Product
ORDER BY 3 DESC, 1 ASC;