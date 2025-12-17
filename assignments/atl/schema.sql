CREATE TABLE "passengers"(
    "id" INTEGER UNIQUE,
    "first_name" TEXT,
    "last_name" TEXT,
    "age" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "airlines"(
    "name" TEXT,
    "concourse" TEXT
);

CREATE TABLE "flights"(
    "flight_number" INTEGER,
    "airline_name" TEXT,
    "departure_code" TEXT,
    "arrival_code" TEXT,
    "dept_date" TEXT,
    "dept_time" TEXT,
    "arr_date" TEXT,
    "arr_time" TEXT,
    PRIMARY KEY("flight_number")
);

CREATE TABLE "checks_in"(
    "passenger_id" INTEGER,
    "check_in_date" TEXT,
    "check_in_time" TEXT,
    "flight_num" INTEGER,
    FOREIGN KEY ("passenger_id") REFERENCES "passengers" ("id"),
    FOREIGN KEY ("flight_num") REFERENCES "flights" ("flight_number")
);


