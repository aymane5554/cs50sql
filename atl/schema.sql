CREATE TABLE passengers(
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE airlines(
    "id" INTEGER,
    "name" TEXT,
    "concourses" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE flights(
    "id" INTEGER,
    "airline_id" INTEGER,
    "from" TEXT,
    "to" TEXT,
    "departure" TEXT,
    "arrival" TEXT,
    FOREIGN KEY("airline_id") REFERENCES "airlines"("id"),
    PRIMARY KEY("id")
);

CREATE TABLE checkins(
    "id" INTEGER,
    "flight_id" INTEGER,
    "date_time" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("flight_id") REFERENCES "flights"("id")
);
