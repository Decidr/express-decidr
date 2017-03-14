BEGIN TRANSACTION;
DROP TABLE IF EXISTS favorties;
DROP TABLE IF EXISTS users;


CREATE TABLE IF NOT EXISTS users
(id BIGSERIAL PRIMARY KEY,
 first_name VARCHAR(255) NOT NULL,
 last_name VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL,
 password VARCHAR(255) NOT NULL
);



CREATE TABLE IF NOT EXISTS favorites
 (id BIGSERIAL PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 image_url VARCHAR(255),
 rating INTEGER(255) NOT NULL
 category serial(255) NOT NULL,
 price VARCHAR(255) NOT NULL,
 location VARCHAR(255) NOT NULL,
 hours VARCHAR(255) NOT NULL,
 review_count INTEGER NOT NULL,
);



ALTER TABLE "users" ADD CONSTRAINT "users_fk0" FOREIGN KEY ("id") REFERENCES "favorties"("id");


COMMIT;
