CREATE VIEW "frequently_reviewed" AS
SELECT "listings"."id" , "property_type" , "host_name" , COUNT("reviews"."id") AS 'reviews' FROM "listings"
JOIN "reviews" on "reviews"."listing_id" = "listings"."id"
GROUP BY "listings"."id"  ORDER BY "reviews" DESC LIMIT 100;
