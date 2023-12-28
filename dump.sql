CREATE TABLE IF NOT EXISTS "myapp_review" (
 "id" INTEGER PRIMARY KEY AUTOINCREMENT,
 "created_at" TEXT,
 "updated_at" TEXT,
 "text" TEXT,
 "product_id" INTEGER
);

INSERT INTO "myapp_review" VALUES (1,'2023-12-12 00:00:00.000000','2023-12-12 00:00:00.000000','This is so good',1),(2,'2023-12-12 00:00:00.000000','2023-12-12 00:00:00.000000','Yummy!!',2);

CREATE TABLE IF NOT EXISTS "tag" (
 "id" INTEGER PRIMARY KEY AUTOINCREMENT,
 "name" TEXT,
 "description" TEXT,
 "base_model_id" INTEGER
);

INSERT INTO "tag" VALUES (NULL,'example1','example1 description',1);