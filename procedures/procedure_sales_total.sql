CREATE OR REPLACE FUNCTION calc_sales_total()
RETURNS NUMERIC AS
$$
DECLARE
  sales_total NUMERIC;
BEGIN

    SELECT
      SUM(quantity * price) into sales_total 
    FROM
      store_orders;
      
    RETURN sales_total;
END;
$$
LANGUAGE plpgsql;