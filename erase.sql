--enable foreign KEY
PRAGMA foreign_keys = ON;
--show headers on tables
.headers ON;
--organize queries in columns
.mode COLUMN;


--erase table
DROP TABLE menus;
DROP TABLE items;

--create tables
CREATE TABLE menus (id INTEGER PRIMARY KEY, name TEXT NOT NULL, description TEXT NOT NULL);
CREATE TABLE items (id INTEGER PRIMARY KEY, name TEXT NOT NULL, price FLOAT NOT NULL, menu_id INTEGER , FOREIGN KEY (menu_id) REFERENCES menus(id));

--menus
INSERT INTO menus (name, description) VALUES ('Breakfast', 'Start your day');
INSERT INTO menus (name, description) VALUES ('Lunch', 'Tire to work? get some lunch');
INSERT INTO menus (name, description) VALUES ('Dinner', 'Finally, have some delicious');

--Items
INSERT INTO items (name, price, menu_id) values ('Eggs Benedict', 5,1);
INSERT INTO items (name, price, menu_id) values ('Eggs Poche', 5,1);
INSERT INTO items (name, price, menu_id) values ('Bacon', 5,1);
INSERT INTO items (name, price, menu_id) values ('Tomato Panini', 12,2);
INSERT INTO items (name, price, menu_id) values ('Broccoli', 17,3);

--join
SELECT * FROM items JOIN menus ON items.menu_id = menus.id WHERE items.menu_id = 1;