SELECT "name" FROM "districts" WHERE "id" IN (
    SELECT "district_id" FROM "expenditures" WHERE "pupils" = (
        SELECT MIN("pupils") FROM "expenditures"
    )
);
