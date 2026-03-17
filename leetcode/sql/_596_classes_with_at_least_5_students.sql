with
    count_class as (
        select
            class, 
            count(class) as qtd_aluno
        from Courses
        group by class
    )
select
    class
from count_class
where qtd_aluno >= 5
