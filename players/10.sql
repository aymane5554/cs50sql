SELECT "first_name" , "last_name" , "height" AS 'the height of the highest american players' FROM "players"
WHERE "birth_country" = 'USA'
ORDER BY "height" desc , "first_name" , "last_name"
LIMIT 10 ;
