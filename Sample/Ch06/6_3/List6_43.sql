/*
SELECT product_type, SUM(sale_price) AS sum_price
FROM Product
GROUP BY product_type;
*/
SELECT SUM(CASE WHEN product_type = '衣服'    THEN sale_price ELSE 0 END) AS sum_price_clothes,
       SUM(CASE WHEN product_type = '厨房用具' THEN sale_price ELSE 0 END) AS sum_price_kitchen,
       SUM(CASE WHEN product_type = '办公用品' THEN sale_price ELSE 0 END) AS sum_price_office
FROM Product;