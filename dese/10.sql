SELECT "districts"."name","expenditures"."per_pupil_expenditure" FROM "districts"
JOIN "expenditures" on "expenditures"."district_id" = "districts"."id"
WHERE "type" = 'Public School District'
ORDER BY "per_pupil_expenditure" DESC LIMIT 10;
