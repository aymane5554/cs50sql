SELECT "title","air_date" FROM "episodes" WHERE "air_date" LIKE '%-01-%' AND "topic" IS NOT NULL;
