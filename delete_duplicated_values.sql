delete from
  "Table"
where
  exists (
    select
      1
    from
      "Table" t
    where
      t.id < "Table".id
      AND t.some_field = "Table".some_field
  );