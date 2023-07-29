DROP TABLE store_orders IF EXISTS;

CREATE TABLE store_orders (
  id SERIAL PRIMARY KEY,
  product_name VARCHAR(255) NOT NULL,
  quantity INTEGER NOT NULL,
  price NUMERIC(10, 2) NOT NULL,
  createdAt DATE NOT NULL
);



INSERT INTO "store_orders" ("id", "product_name", "quantity", "price","createdat")
SELECT
	x.id,
    'PRODUCT #' || x.id as "product_name",
    x.id as "quantity",
    10 as "price",
    now() as "createdat"
  FROM generate_series(1,7000000) AS x(id);


SELECT * FROM store_orders


CREATE MATERIALIZED VIEW store_orders_mat_view AS
SELECT
  store_orders.id,
  store_orders.quantity,
  store_orders.price  
  FROM
  store_orders