UPDATE Product
SET regist_date = NULL
WHERE product_id = '0008';

SELECT * FROM Product ORDER BY product_id;