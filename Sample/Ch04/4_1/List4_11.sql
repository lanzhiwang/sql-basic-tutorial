CREATE TABLE ProductType
  (
    product_type       VARCHAR(32) NOT NULL,
    sum_sale_price     INTEGER,
    sum_purchase_price INTEGER,
    PRIMARY KEY (product_type)
  );