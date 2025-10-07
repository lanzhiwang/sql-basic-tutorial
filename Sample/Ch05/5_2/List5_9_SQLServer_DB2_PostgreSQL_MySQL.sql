SELECT product_type, cnt_product
FROM (
    SELECT product_type, COUNT(*) AS cnt_product FROM Product GROUP BY product_type
) AS ProductSum;