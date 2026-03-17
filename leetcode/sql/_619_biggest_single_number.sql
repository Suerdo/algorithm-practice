with 
    output as (
        select 
                num,
                count(num)
            from MyNumbers
            group by num 
            having count(num) = 1 
    )
select
    max(num) as num
from output
