-- !Run ONCE(!) to create restaurants in development database
-- !Highlight everything after -- and press F5 to actually execute
--INSERT INTO restaurants (name,address1,postal_code,phone_number,city,cuisine,created_at,updated_at) VALUES ('Indian Fun','Snorgatan 12','164 55','1234555','Kista','Indian Food',now(),now());
--INSERT INTO restaurants (name,address1,postal_code,phone_number,city,cuisine,created_at,updated_at) VALUES ('Italian Fun','Leyongatan 14','164 55','8462956','Kista','Italian Food',now(),now());
--INSERT INTO restaurants (name,address1,postal_code,phone_number,city,cuisine,created_at,updated_at) VALUES ('Chinese Fun','Potatisgatan 20','164 55','0484658','Kista','Chinese Food',now(),now());
--INSERT INTO restaurants (name,address1,postal_code,phone_number,city,cuisine,created_at,updated_at) VALUES ('American Fun','Snigelgatan 69','164 55','0735465','Kista','American Food',now(),now());

-- SELECT * FROM restaurants;
-- !Use the id for the inserted restaurant you want to add dishes for

--INSERT INTO dishes (title,description,price,created_at,updated_at,restaurant_id) VALUES ('papadom', 'deep fried crunchy things', 100, now(), now(), 3);
