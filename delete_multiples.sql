DELETE FROM "TABLE_NAME" WHERE id IN (SELECT id FROM generate_series(34,100000) AS x(id))