SELECT "city" , COUNT("id") AS 'number of schools' FROM "schools" WHERE "type" = 'Public School'
GROUP BY "city" ORDER BY "number of schools" DESC , "city" LIMIT 10;
