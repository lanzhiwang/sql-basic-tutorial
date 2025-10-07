INSERT INTO ProductType (product_type, sum_sale_price, sum_purchase_price)
SELECT product_type, SUM(sale_price), SUM(purchase_price) FROM Product GROUP BY product_type;

SELECT * FROM ProductType;