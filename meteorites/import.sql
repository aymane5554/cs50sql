CREATE TABLE meteorites0(
    "name" TEXT ,
    "id" INTEGER ,
    "type" TEXT ,
    "class" TEXT ,
    "mass" REAL DEFAULT(NULL),
    "discovery" TEXT ,
    "year" REAL DEFAULT(NULL),
    "lat" REAL DEFAULT(NULL),
    "long" REAL DEFAULT(NULL),
    PRIMARY KEY("id")
);

.import --csv --skip 1  meteorites.csv meteorites0

CREATE TABLE meteorites(
    "id" INTEGER ,
    "name" TEXT ,
    "class" TEXT ,
    "mass" REAL DEFAULT(NULL),
    "discovery" TEXT ,
    "year" REAL DEFAULT(NULL),
    "lat" REAL DEFAULT(NULL),
    "long" REAL DEFAULT(NULL),
    PRIMARY KEY("id")
);

UPDATE "meteorites0" SET "mass" = NULL WHERE "mass" = '';
UPDATE "meteorites0" SET "lat" = NULL WHERE "lat" = '';
UPDATE "meteorites0" SET "long" = NULL WHERE "long" = '';
UPDATE "meteorites0" SET "year" = NULL WHERE "year" = '';

UPDATE "meteorites0" SET "mass" = ROUND("mass",2) WHERE "mass" IS NOT NULL ;
UPDATE "meteorites0" SET "lat" = ROUND("lat",2) WHERE "lat" IS NOT NULL ;
UPDATE "meteorites0" SET "long" = ROUND("long",2) WHERE "long" IS NOT NULL ;
DELETE  FROM "meteorites0" WHERE "type" = 'Relict' ;

INSERT INTO "meteorites" ("name","class","mass","discovery","year","lat","long")
    SELECT "name","class","mass","discovery","year","lat","long" FROM "meteorites0"
    ORDER BY "year" , "name" ;

DROP TABLE "meteorites0";
