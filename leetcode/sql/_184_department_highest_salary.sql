with maior_salario_departamento as (
    select 
        e.departmentId,
        max(e.salary) as max_salary
    from Employee e
    group by e.departmentId
)
select 
    d.name as Department,
    e.name as Employee,
    e.salary as Salary
from Employee e
join Department d 
    on e.departmentId = d.id
join maior_salario_departamento m
    on e.departmentId = m.departmentId
   and e.salary = m.max_salary
order by Salary desc;



