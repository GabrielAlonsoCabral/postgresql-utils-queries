INSERT INTO "TABLE_NAME" ("id", "FIELD_1", "FIELD_2", "createdAt", "updatedAt")
SELECT
	x.id,
    'LOOP_ALONSO_SCRIPT #' || x.id as "FIELD_1",
    'Gabriel Alonso' as "FIELD_2",
    now() as "createdAt",
    now() as "updatedAt"
  FROM generate_series(34,1000) AS x(id);