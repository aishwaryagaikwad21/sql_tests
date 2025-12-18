CREATE TABLE "users"(
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "user_name" TEXT,
    "password" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "schools_universities"(
    "id" INTEGER,
    "name" TEXT,
    "type" TEXT,
    "location" TEXT,
    "founding_year" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "companies"(
    "id" INTEGER,
    "name" TEXT,
    "industry_type" TEXT,
    "location" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "connect_ppl"(
    "user_a_id" INTEGER,
    "user_b_id" INTEGER,
    FOREIGN KEY ("user_a_id") REFERENCES "users"("id"),
    FOREIGN KEY ("user_b_id") REFERENCES "users"("id")
);

CREATE TABLE "connect_schools"(
    "u_id" INTEGER,
    "s_id" INTEGER,
    "start_date" TEXT,
    "end_date" TEXT,
    "degree_type" TEXT,
    FOREIGN KEY("u_id") REFERENCES "users"("id"),
    FOREIGN KEY("s_id") REFERENCES "schools_universities"("id")
);

CREATE TABLE "connect_companies"(
    "u_id" INTEGER,
    "c_id" INTEGER,
    "start_date" TEXT,
    "end_date" TEXT,
    "title" TEXT,
    FOREIGN KEY("u_id") REFERENCES "users"("id"),
    FOREIGN KEY("c_id") REFERENCES "companies"("id")
);