DROP TABLE IF EXISTS recipes;

CREATE TABLE recipes (
  id SERIAL PRIMARY KEY,
  name TEXT,
  cooking_time INT,
  rating INT
);

TRUNCATE TABLE recipes RESTART IDENTITY; -- replace with your own table name.

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.

INSERT INTO recipes (name, cooking_time, rating) VALUES ('Fried Eggs', '10', '3');
INSERT INTO recipes (name, cooking_time, rating) VALUES ('Pad Thai', '40', '4');
INSERT INTO recipes (name, cooking_time, rating) VALUES ('Spaghetti Bolognese', '60', '4');