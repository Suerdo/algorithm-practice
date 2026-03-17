delete from Person
where id not in (
		select MIN(id)
		from Person
		group by email
		);