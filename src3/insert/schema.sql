-- Demonstrates schema of mfa.db for insert files
-- Creates mfa.db

-- Deletes prior tables if they exist
-- DROP TABLE IF EXISTS "collections";
-- DROP TABLE IF EXISTS "artists";
-- DROP TABLE IF EXISTS "created";

-- Creates collections table
CREATE TABLE "collections"(
    "id" INTEGER,
    "title" TEXT NOT NULL,
    "accession_number" TEXT NOT NULL UNIQUE,
    "acquired" NUMERIC,
    PRIMARY KEY("id")
);


/*
.import --csv --skip 1 import1.csv collections
.import --csv import2.csv temp (import2 doesn't have unique id/primary key)
DELETE FROM "collections" 
Shift temp data to collections using
    INSERT INTO "collections" ("title", "accession_number", "acquired")
    SELECT "title", "accession_number", "acquired" FROM "temp"; --> this will give unique id in collections table by shifting
*/