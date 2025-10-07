--MySQL
--IF(condition, value_if_true, value_if_false)
/*
mysql> SELECT IF(500<1000, "YES", "NO");
+---------------------------+
| IF(500<1000, "YES", "NO") |
+---------------------------+
| YES                       |
+---------------------------+
1 row in set (0.00 sec)

mysql>
*/

SELECT product_name,
    IF(
        IF(
            IF(product_type = '衣服', Concat('A: ', product_type), NULL) IS NULL AND product_type = '办公用品',
            Concat('B: ', product_type),
            IF(product_type = '衣服', Concat('A: ', product_type), NULL)
        ) IS NULL AND product_type = '厨房用具',
        Concat('C: ', product_type),
        IF(
            IF(product_type = '衣服', Concat('A: ', product_type), NULL) IS NULL AND product_type = '办公用品',
            Concat('B: ', product_type),
            IF(product_type = '衣服', Concat('A: ', product_type), NULL)
        )
    ) AS abc_product_type
FROM Product;

SELECT product_name,
       CASE WHEN product_type = '衣服' THEN CONCAT('A: ', product_type)
            WHEN product_type = '办公用品' THEN CONCAT('B: ', product_type)
            WHEN product_type = '厨房用具' THEN CONCAT('C: ', product_type)
            ELSE NULL
        END AS abc_product_type
FROM Product;