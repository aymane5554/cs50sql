SELECT ROUND(AVG("height"),2) AS "Average Height" , ROUND(AVG("weight"),2) AS "Average Weight" FROM "players"
WHERE "debut" >= '2001-01-01' ;
