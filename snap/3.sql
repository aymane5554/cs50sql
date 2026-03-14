WITH "top3" AS (
SELECT COUNT("id") AS 'msgs',"to_user_id"  FROM "messages"
    WHERE "from_user_id" =
        (SELECT "id" FROM "users" WHERE "username" = 'creativewisdom377')
    GROUP BY "to_user_id" ORDER BY "msgs" DESC LIMIT 3)
SELECT "to_user_id" FROM "top3";
