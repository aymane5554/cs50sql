SELECT "name" , "exemplary" ,"per_pupil_expenditure" FROM "districts"
JOIN "expenditures" on "expenditures"."district_id" = "districts"."id"
JOIN "staff_evaluations" on "staff_evaluations"."district_id" = "districts"."id"
WHERE "type" = 'Public School District' AND "per_pupil_expenditure" > (
    SELECT AVG("per_pupil_expenditure") FROM "expenditures"
)
AND "exemplary" > (
    SELECT AVG("exemplary") FROM "staff_evaluations"
) ORDER BY "exemplary" DESC , "per_pupil_expenditure" DESC
