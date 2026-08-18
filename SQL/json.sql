SELECT data->> 'name' AS name
FROM datails_table
WHERE data->> 'name' = 'Melody Kelly';
/* ORDER BY name DESC
LIMIT 1 OFFSET 1; */