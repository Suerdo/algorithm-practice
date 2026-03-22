select 
  p.part,
  p.assembly_step
from parts_assembly as p
where finish_date is null