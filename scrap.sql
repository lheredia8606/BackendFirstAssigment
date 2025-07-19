
--Users Table

   -- id: auto incrementing primary id
   -- first_name string
   -- last_name string
   -- motto string nullable
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    motto TEXT
);

-- Dogs Table

   -- id: auto incrementing primary id
   -- name string
CREATE TABLE dogs (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

-- Favorites Table
   -- should tie together users and dogs with foreign id's
   -- needs `user_id` & `dog_id` keys
   -- must be foreign keys

CREATE TABLE favorites (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    dog_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (dog_id) REFERENCES dogs(id),
    UNIQUE(user_id, dog_id)
);

 --insert users

   -- Create a user named Jon Higgz, who's life motto is "I love coding".
   -- Create a user named Andrey Rusterton, who's life motto is "I love coding even more".
   -- Create a user named Peter Garboni, who's life motto is "I love coding even more".

   INSERT INTO users (first_name, last_name, motto) VALUES ('Jon', 'Higgz', 'I love coding');
   INSERT into users (first_name, last_name, motto) VALUES ('Andrey','Rusterton', 'I love coding even more');
   INSERT into users (first_name, last_name, motto) VALUES ('Peter','Garboni', 'I love coding even more');

--Dogs

   -- Create a dog named DOOMSLAYER
   -- Create a dog named Zoey
   -- Create a dog named Jefferey
INSERT INTO dogs (name) VALUES ('DOOMSLAYER');
INSERT INTO dogs (name) VALUES ('Zoey');
INSERT INTO dogs (name) VALUES ('Jefferey');

-- Favorites
   -- Peter Favorites Doomslayer
   -- Jon Favorites Doomslayer
   -- Andrey Favorites Doomslayer
   -- Jon Favorites Jefferey
   -- Andrey favorites Zoey
   INSERT INTO favorites (user_id, dog_id) VALUES (3,1);
   INSERT INTO favorites (user_id, dog_id) VALUES (1,1);
   INSERT INTO favorites (user_id, dog_id) VALUES (2,1);
   INSERT INTO favorites (user_id, dog_id) VALUES (1,3);
   INSERT INTO favorites (user_id, dog_id) VALUES (2,2);
