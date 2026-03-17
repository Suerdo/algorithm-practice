select
  case
    when mod(id, 2) = 1 and exists (select 1 from seat s2 where s2.id = s1.id + 1) then id + 1
    when mod(id, 2) = 0 then id - 1
    else id
  end as id,
  student
from seat s1
order by id
