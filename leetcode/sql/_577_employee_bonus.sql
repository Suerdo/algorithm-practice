select
    e.name,
    b.bonus
left join Bonus b
    on e.empId = b.empId
where b.bonus < 1000 OR b.bonus IS NULL;
 