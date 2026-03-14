SELECT "first_name" , "last_name" FROM "players"
JOIN "performances" ON "performances"."player_id" = "players"."id"
JOIN "salaries" ON "salaries"."player_id" = "players"."id" AND "salaries"."year" = "performances"."year"
WHERE "performances"."H" != 0 AND "performances"."year" = 2001 AND "salaries"."year" = 2001 AND "players"."id" IN (
    SELECT "players"."id" FROM "players"
    JOIN "performances" ON "performances"."player_id" = "players"."id"
    JOIN "salaries" ON "salaries"."player_id" = "players"."id" AND "salaries"."year" = "performances"."year"
    WHERE "performances"."RBI" != 0 AND "performances"."year" = 2001 AND "salaries"."year" = 2001
    ORDER BY "salaries"."salary"/"performances"."RBI" , "players"."first_name" , "players"."last_name"
)
ORDER BY "salaries"."salary"/"performances"."H" , "players"."first_name" , "players"."last_name" LIMIT 10
;
