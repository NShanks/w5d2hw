CREATE TABLE "Customer" (
  "customer_id" serial,
  "first_name" VARCHAR(60),
  "last_name" VARCHAR(60),
  "email" VARCHAR(60),
  "billing_info" VARCHAR(60),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "Ticket" (
  "ticket_key" serial,
  "customer_id" VARCHAR(60),
  "movie_id" VARCHAR(60),
  "Field" Type,
  PRIMARY KEY ("ticket_key"),
  CONSTRAINT "FK_Ticket.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "Customer"("customer_id")
);

CREATE INDEX "Key" ON  "Ticket" ("Field");

CREATE TABLE "Movie" (
  "movie_id" serial,
  "title" VARCHAR(60),
  "length" VARCHAR(60),
  "cost" VARCHAR(60),
  "time" VARCHAR(60),
  PRIMARY KEY ("movie_id")
);

CREATE TABLE "Concessions" (
  "order_id" serial,
  "food_id" VARCHAR(60),
  "drink_id" VARCHAR(60),
  "customer_id" VARCHAR(60),
  "total_cost" VARCHAR(60),
  PRIMARY KEY ("order_id"),
  CONSTRAINT "FK_Concessions.order_id"
    FOREIGN KEY ("order_id")
      REFERENCES "Ticket"("ticket_key"),
  CONSTRAINT "FK_Concessions.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "Customer"("customer_id")
);

