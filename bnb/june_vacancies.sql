CREATE VIEW "june_vacancies" AS
SELECT "listings"."id" , "property_type" , "host_name", COUNT("availabilities"."listing_id") AS "days_vacant" FROM "listings"
JOIN  "availabilities" ON "availabilities"."listing_id" = "listings"."id"
WHERE "date" >= '2023-06-01' AND "date" <= '2023-06-30' AND "available" = 'TRUE' GROUP BY "availabilities"."listing_id" ;
