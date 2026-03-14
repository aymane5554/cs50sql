CREATE TABLE ingredients(
    "id" INTEGER,
    "name" TEXT,
    "price" REAL,
    PRIMARY KEY("id")
);

CREATE TABLE donuts(
    "id" INTEGER,
    "name" TEXT,
    "gluten" TEXT,
    "price" REAL,
    "ingredient_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("ingredient_id") REFERENCES "ingredients"("id")
);

CREATE TABLE costumers(
    "id" INTEGER
    "first_name" TEXT
    "last_name" TEXT
);

CREATE TABLE orders(
    "id" INTEGER,
    "costumer_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("costumer_id") REFERENCES "costumers"("id")
)
