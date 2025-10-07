--MySQL
START TRANSACTION;

    UPDATE Product
       SET sale_price = sale_price - 1000
     WHERE product_name = '运动T恤';

    UPDATE Product
       SET sale_price = sale_price + 1000
     WHERE product_name = 'T恤衫';

ROLLBACK;