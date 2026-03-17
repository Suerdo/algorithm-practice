select
  c.candidate_id
from candidates as c
where c.skill in ('Python', 'Tableau', 'PostgreSQL')
group by c.candidate_id
having count(distinct c.skill) = 3
