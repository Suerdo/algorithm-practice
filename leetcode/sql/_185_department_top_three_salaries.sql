with ranked as (
  select
    e.id,
    e.name as Employee,
    e.salary as Salary,
    e.departmentId,
    DENSE_RANK() OVER (
      PARTITION BY e.departmentId
      order by e.salary desc
    ) as rnk
  from Employee e
)
select
  d.name as Department,
  r.Employee,
  r.Salary
from ranked r
left join Department d
  on d.id = r.departmentId
where r.rnk <= 3
order by d.name, r.Salary desc, r.Employee
