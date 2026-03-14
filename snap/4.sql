WITH "user_id" AS (
SELECT "to_user_id" , COUNT("id") AS 'msgs' FROM "messages"
GROUP BY "to_user_id" ORDER BY "msgs" DESC, "username" LIMIT 1
)
SELECT "username" FROM "users" WHERE "id" = (SELECT "to_user_id" FROM "user_id");
