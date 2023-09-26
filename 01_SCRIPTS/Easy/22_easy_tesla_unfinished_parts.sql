-- tesla unfinished parts --

SELECT 
distinct part,
assembly_step
FROM parts_assembly
where finish_date is null
