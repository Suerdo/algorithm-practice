with first_login_ as  (
        select 
            min(event_date) as first_login,
            player_id
        from Activity
        group by player_id
    )
select
    player_id,
    first_login 
from first_login_
order by player_id asc 