
--
-- Class User as table users
--

CREATE TABLE "users" (
  "id" serial,
  "name" text NOT NULL,
  "phone" integer NOT NULL,
  "userInfo" json NOT NULL,
  "address" json
);

ALTER TABLE ONLY "users"
  ADD CONSTRAINT users_pkey PRIMARY KEY (id);
