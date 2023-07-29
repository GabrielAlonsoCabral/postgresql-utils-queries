select
  "id",
  count(*)
from
  "Table"
group by
  "id"
HAVING
  count(*) > 1
