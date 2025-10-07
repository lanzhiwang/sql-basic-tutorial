SELECT SP.shop_id, SP.shop_name, SP.product_id, P.product_name, P.sale_price
FROM ShopProduct AS SP
RIGHT OUTER JOIN Product AS P ON SP.product_id = P.product_id
ORDER BY P.product_id;
---
SELECT SP.shop_id, SP.shop_name, SP.product_id, P.product_name, P.sale_price
FROM ShopProduct AS SP
LEFT OUTER JOIN Product AS P ON SP.product_id = P.product_id
ORDER BY P.product_id;