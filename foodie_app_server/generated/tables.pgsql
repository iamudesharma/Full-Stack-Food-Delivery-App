--
-- Class Address as table addresses
--

CREATE TABLE "addresses" (
  "id" serial,
  "city" text NOT NULL,
  "pin" integer NOT NULL,
  "latitude" double precision NOT NULL,
  "longitude" double precision NOT NULL,
  "address" text NOT NULL,
  "landmark" text NOT NULL
);

ALTER TABLE ONLY "addresses"
  ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);


--
-- Class Discount as table discount
--

CREATE TABLE "discount" (
  "id" serial,
  "startDate" timestamp without time zone NOT NULL,
  "endDate" timestamp without time zone NOT NULL,
  "startTime" timestamp without time zone NOT NULL,
  "endTime" timestamp without time zone NOT NULL,
  "minPurchase" double precision NOT NULL,
  "maxDiscount" double precision NOT NULL,
  "discount" double precision NOT NULL,
  "discountType" text NOT NULL,
  "createdAt" timestamp without time zone NOT NULL,
  "updatedAt" timestamp without time zone NOT NULL
);

ALTER TABLE ONLY "discount"
  ADD CONSTRAINT discount_pkey PRIMARY KEY (id);


--
-- Class Product as table products
--

CREATE TABLE "products" (
  "id" serial,
  "name" text NOT NULL,
  "phone" text NOT NULL,
  "email" text NOT NULL,
  "logo" text,
  "latitude" double precision NOT NULL,
  "longitude" double precision NOT NULL,
  "address" json NOT NULL,
  "minimumOrder" double precision NOT NULL,
  "freeDelivery" double precision NOT NULL,
  "coverPhoto" text,
  "delivery" boolean NOT NULL,
  "takeAway" boolean NOT NULL,
  "avgRating" double precision NOT NULL,
  "ratingCount" double precision NOT NULL,
  "selfDeliverySystem" boolean NOT NULL,
  "deliveryCharge" double precision NOT NULL,
  "packagingCharge" double precision NOT NULL,
  "open" integer NOT NULL,
  "active" boolean NOT NULL,
  "deliveryTime" text NOT NULL,
  "veg" integer NOT NULL,
  "nonVeg" integer NOT NULL,
  "discount" json NOT NULL
);

ALTER TABLE ONLY "products"
  ADD CONSTRAINT products_pkey PRIMARY KEY (id);


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


