CREATE TABLE users (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "user_name" TEXT,
    "password" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE schools(
    "id" INTEGER,
    "name" TEXT,
    "type" TEXT,
    "location" TEXT,
    "year" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE companies(
    "id" INTEGER,
    "name" TEXT,
    "industry" TEXT,
    "location" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE user_connections(
    "id" INTEGER,
    "user1_id" INTEGER,
    "user2_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("user1_id") REFERENCES "users"("id"),
    FOREIGN KEY("user2_id") REFERENCES "users"("id")
);

CREATE TABLE schools_conections(
    "id" INTEGER,
    "user_id" INTEGER,
    "school_id" INTEGER,
    "type" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("school_id") REFERENCES "schools"("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id")
);

CREATE TABLE companies_conections(
    "id" INTEGER,
    "user_id" INTEGER,
    "companie_id" INTEGER,
    "type" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("companie_id") REFERENCES "companies"("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id")
)
