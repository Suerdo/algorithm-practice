select
    per.firstName, 
    per.lastName, 
    add.city,
    add.state
from Person as per
left join Address as add
    on per.personId = add.personId