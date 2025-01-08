PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE __diesel_schema_migrations (
       version VARCHAR(50) PRIMARY KEY NOT NULL,
       run_on TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO __diesel_schema_migrations VALUES('20230712015439','2023-07-13 00:25:15');
CREATE TABLE recipes (
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  instructions_markdown TEXT NOT NULL,
  notes_markdown TEXT NOT NULL
);
INSERT INTO recipes VALUES(1,'My Recipe',replace('1. Mix flour, milk, and **eggs** together.\n2. Slowly mix in the chocolate chips. _Don''t stir too much_\n3. Add additional steps as needed ...\n\nBake at 450°F for 20 minutes. Serve hot.','\n',char(10)),'');
INSERT INTO recipes VALUES(2,'Recipe 2',replace('1. Mix flour, milk, and **eggs** together.\n2. Slowly mix in the chocolate chips. _Don''t stir too much_\n3. Add additional steps as needed ...\n\nBake at 450°F for 20 minutes. Serve hot.','\n',char(10)),'');
INSERT INTO recipes VALUES(3,'Test',replace('1. Mix flour, milk, and **eggs** together.\n2. Slowly mix in the chocolate chips. _Don''t stir too much_\n3. Add additional steps as needed ...\n4. Some more instructions\n\nBake at 450°F for 20 minutes. Serve hot.','\n',char(10)),'');
CREATE TABLE ingredients (
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  notes_markdown TEXT NOT NULL
);
INSERT INTO ingredients VALUES(1,'Ingredient 1','');
INSERT INTO ingredients VALUES(2,'Ingredient 2','This ingredient has a _note_');
INSERT INTO ingredients VALUES(3,'Ingredient 3','This ingredient has a _note_');
INSERT INTO ingredients VALUES(4,'Sour Cream','');
INSERT INTO ingredients VALUES(5,'Lettuce','');
INSERT INTO ingredients VALUES(6,'Cottage cheese','');
INSERT INTO ingredients VALUES(7,'Flour','');
INSERT INTO ingredients VALUES(8,'Bourbon','');
INSERT INTO ingredients VALUES(9,'salt','');
CREATE TABLE recipe_ingredients (
  recipe_id INTEGER NOT NULL,
  ingredient_id INTEGER NOT NULL,
  display_order INTEGER NOT NULL,
  quantity VARCHAR(255) NOT NULL, -- Text is simpler than trying to store all units
  notes_markdown TEXT NOT NULL,

  PRIMARY KEY (recipe_id, ingredient_id),
  FOREIGN KEY (recipe_id) REFERENCES recipes(id) ON DELETE CASCADE,
  FOREIGN KEY (ingredient_id) REFERENCES ingredients(id) ON DELETE CASCADE
);
INSERT INTO recipe_ingredients VALUES(1,1,1,'1 Cup','');
INSERT INTO recipe_ingredients VALUES(1,2,2,'2/3 Tbsp','');
INSERT INTO recipe_ingredients VALUES(1,3,3,'5 tsp','This ingredient has a _note_');
INSERT INTO recipe_ingredients VALUES(3,7,1,'1 cup','');
INSERT INTO recipe_ingredients VALUES(3,8,2,'2 pints','');
INSERT INTO recipe_ingredients VALUES(3,9,3,'1.5 Tbsp','');
INSERT INTO recipe_ingredients VALUES(2,4,1,'5 cups','');
INSERT INTO recipe_ingredients VALUES(2,5,2,'7 cups','');
INSERT INTO recipe_ingredients VALUES(2,6,3,'9 cups','');
CREATE TABLE tags (
  id VARCHAR(255) NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description_markdown TEXT NOT NULL
);
INSERT INTO tags VALUES('unleavened','Unleavened','Food for the **Days of Unleavened Bread**');
INSERT INTO tags VALUES('sabbath','Sabbath Dinner','Meals we eat on a Sabbath night dinner');
CREATE TABLE recipe_tags (
  recipe_id INTEGER NOT NULL,
  tag_id VARCHAR(255) NOT NULL,
  PRIMARY KEY (recipe_id, tag_id),
  FOREIGN KEY (recipe_id) REFERENCES recipes(id) ON DELETE CASCADE,
  FOREIGN KEY (tag_id) REFERENCES tags(id) ON DELETE CASCADE
);
INSERT INTO recipe_tags VALUES(1,'unleavened');
INSERT INTO recipe_tags VALUES(3,'sabbath');
INSERT INTO recipe_tags VALUES(2,'sabbath');
INSERT INTO recipe_tags VALUES(2,'unleavened');
CREATE INDEX recipes_name_index ON recipes (name);
COMMIT;
