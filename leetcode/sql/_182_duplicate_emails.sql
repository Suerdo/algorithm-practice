select
    t.email
from (
    select 
        count(*),
        email
    from Person
    group by email
    having count(*) > 1
) as t