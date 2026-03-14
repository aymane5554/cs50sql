SELECT "first_name" , "last_name" , "salaries"."salary"/"performances"."H" AS 'dollars per hit' FROM "players"
JOIN "performances" ON "performances"."player_id" = "players"."id"
JOIN "salaries" ON "salaries"."player_id" = "players"."id" AND "salaries"."year" = "performances"."year"
WHERE "performances"."H" != 0 AND "performances"."year" = 2001
ORDER BY "dollars per hit" , "players"."first_name" , "players"."last_name"
LIMIT 10 ;
