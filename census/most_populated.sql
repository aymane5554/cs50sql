CREATE VIEW "most_populated" AS
SELECT * FROM "by_district"
ORDER BY "population" DESC ;
