CREATE TABLE "ingredients"(
    "id" INTEGER,
    "ingredient_name" TEXT,
    "price_per_unit" REAL,
    PRIMARY KEY("id")
);

CREATE TABLE "donuts"(
    "id" INTEGER,
    "gluten_free_?" TEXT,
    "price" REAL,
    "ingredient_no" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY ("ingredient_no") REFERENCES "ingredients"("id")
);

CREATE TABLE "customers"(
    "id" INTEGER,
    "f_name" TEXT,
    "l_name" TEXT,
    "past_order_no" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY ("past_order_no") REFERENCES "orders"("id")
);

CREATE TABLE "orders"(
    "id" INTEGER,
    "donut" INTEGER,
    "customer" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("donut") REFERENCES "donuts"("id"),
    FOREIGN KEY("customer") REFERENCES "customers"("id")
)