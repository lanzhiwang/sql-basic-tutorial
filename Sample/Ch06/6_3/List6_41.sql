SELECT product_name,
       CASE WHEN product_type = '衣服' THEN CONCAT('A: ', product_type)
            WHEN product_type = '办公用品' THEN CONCAT('B: ', product_type)
            WHEN product_type = '厨房用具' THEN CONCAT('C: ', product_type)
            ELSE NULL
        END AS abc_product_type
FROM Product;