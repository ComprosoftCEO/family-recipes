PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE __diesel_schema_migrations (
       version VARCHAR(50) PRIMARY KEY NOT NULL,
       run_on TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO __diesel_schema_migrations VALUES('20230712015439','2025-01-08 02:55:16');
INSERT INTO __diesel_schema_migrations VALUES('20250108043050','2025-01-08 04:36:57');
CREATE TABLE recipes (
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  instructions_markdown TEXT NOT NULL,
  notes_markdown TEXT NOT NULL
);
INSERT INTO recipes VALUES(1,'Broccoli Cheddar Soup',replace('1. Melt butter in a large pot along with oil. Add onions, carrots, celery, salt, pepper and nutmeg. Cook until the veggies are soft.\n2. Add the flour to the mixture and stir to make a roux.\n3. Slowly add chicken broth and milk and stir until thick and boiling.\n4. Reduce heat to low. Mix in broccoli. Add cheese and gently stir until melted.','\n',char(10)),'');
INSERT INTO recipes VALUES(2,'Taco Chili',replace('1. Brown the ground beef in a frying pan with onions and peppers until cooked through.\n2. Place all ingredients in a crock pot. Cook on low for 8 hours.','\n',char(10)),'');
INSERT INTO recipes VALUES(3,'Buttermilk Biscuits',replace('1. Heat oven to 400°F\n2. Cut butter into flour, sugar, baking powder, and salt in medium bowl, using pastry blender, until mixture looks like fine crumbs.\n3. Stir in milk until dough leaves side of bowl (dough will be soft and sticky)\n4. Turn dough onto lightly floured surface. Kneed lightly 10 times. Roll or pat 1/2 inch thick. Cut with flowered 2 1/2-inch round cutter. Place on ungreased cookie sheet about 1 inch apart for crusty sides, touching for soft sides.\n5. Bake for 10 to 12 minutes until golden brown.','\n',char(10)),'');
INSERT INTO recipes VALUES(4,'Pizza Dough',replace('Put in bread maker. Use setting 12, `Pizza Dough`. It takes 45 minutes.\n\nPizza cooks at 425°F for 15 minutes. (Or 20 minutes if oven takes awhile to heat up)','\n',char(10)),'');
INSERT INTO recipes VALUES(5,'Crock Pot Enchiladas',replace('1. Brown 1 pound of ground beef with peppers and onions. Add some salt & pepper.\n2. Mix in ½ jar of enchilada sauce.\n3. Spray crockpot with cooking spray. Spread a little enchilada sauce on the bottom. Add ⅓ flour tortillas. Cover with more enchilada sauce. Put ⅓rd of meat and ⅓rd of shredded cheese. Repeat 2 more times, ending with cheese.\n4. Cook in crockpot 4 hours on low.','\n',char(10)),'');
INSERT INTO recipes VALUES(6,'Creamy Chicken with Penne',replace('1. Cook 1 pound of penne pasta following package directions; stir in 4 cups broccoli flowerets for last 2 minutes.\n2. Meanwhile, sauté 1 onion, sliced, in 1 tablespoon olive oil in large skillet 6 minutes, until softened.\n3. Add ½ pound boneless, skinless chicken breasts, cut into small pieces; sauté 4 minutes until cooked.\n4. Stir in ¾ cup drained, finely chopped sun-dried tomatoes in oil, 1 cup heavy cream, ½ chicken broth, 2 tablespoons balsamic vinegar, 1 teaspoon salt, and ¼ teaspoon black pepper; simmer 4 minutes.\n5. Drain pasta, broccoli; toss with chicken mixture and ¾ cups grated Parmesan cheese.\n\nMakes 6 servings at $1.50 each.','\n',char(10)),'');
INSERT INTO recipes VALUES(7,'Honey Wheat Rolls',replace('1. Use dough setting on breadmaker (#13, 1:30 min) to make dough.\n2. Shape into rolls and place in **greased pan**. Let it rise for 30 minutes covered by a towel.\n3. Bake in 350°F oven for 20-25 minutes. Longer time for larger rolls.\n\n**How to rise:**\nSet oven at 190°F but turn it off after ≈5 minutes (so oven doesn''t actually get to 190°F). Put rolls in oven covered by towel for 30 minutes.\n\n_Note: take rolls out after rising and wait until oven hits 350°F before putting them back in._','\n',char(10)),'');
INSERT INTO recipes VALUES(8,'Popovers',replace('1. Preheat oven for 10 minutes at 450°F.\n2. Grease and heat muffin tins for 3-4 minutes in oven before filling.\n3. Combine egg, salt, milk, flour, sugar, and oil.\n4. Fill muffin tins half-full and bake for 15 minutes.\n5. Take out muffin tins, lower oven to 350°F, then bake another 15 minutes.','\n',char(10)),'');
INSERT INTO recipes VALUES(9,'Chili',replace('1. Cook pepper and onion with ground meat until meat is fully cooked.\n2. Add diced tomatoes, kidney beans, and spices. Simmer for 20 minutes until spices are flavorful. Serve hot.','\n',char(10)),'');
CREATE TABLE ingredients (
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL);
INSERT INTO ingredients VALUES(1,'Onion');
INSERT INTO ingredients VALUES(2,'Shredded Carrot');
INSERT INTO ingredients VALUES(3,'Chopped Celery');
INSERT INTO ingredients VALUES(4,'Butter');
INSERT INTO ingredients VALUES(5,'Olive Oil');
INSERT INTO ingredients VALUES(6,'White Flour');
INSERT INTO ingredients VALUES(7,'Chicken Broth');
INSERT INTO ingredients VALUES(8,'Milk');
INSERT INTO ingredients VALUES(9,'Broccoli');
INSERT INTO ingredients VALUES(10,'Sharp Cheddar Cheese');
INSERT INTO ingredients VALUES(11,'Salt');
INSERT INTO ingredients VALUES(12,'Pepper');
INSERT INTO ingredients VALUES(13,'Nutmeg');
INSERT INTO ingredients VALUES(14,'Ground Beef');
INSERT INTO ingredients VALUES(15,'Bell Pepper');
INSERT INTO ingredients VALUES(16,'Kidney Beans');
INSERT INTO ingredients VALUES(17,'Black Beans');
INSERT INTO ingredients VALUES(18,'Salsa Authentica');
INSERT INTO ingredients VALUES(19,'Chunky Salsa');
INSERT INTO ingredients VALUES(20,'Diced Tomatoes');
INSERT INTO ingredients VALUES(21,'Taco Seasoning');
INSERT INTO ingredients VALUES(22,'Frozen Corn');
INSERT INTO ingredients VALUES(23,'Beef Broth');
INSERT INTO ingredients VALUES(24,'Flour');
INSERT INTO ingredients VALUES(25,'Baking Powder');
INSERT INTO ingredients VALUES(26,'Water');
INSERT INTO ingredients VALUES(27,'Honey');
INSERT INTO ingredients VALUES(28,'Yeast');
INSERT INTO ingredients VALUES(29,'Enchilada Sauce');
INSERT INTO ingredients VALUES(30,'Flour Tortillas');
INSERT INTO ingredients VALUES(31,'Shredded Cheese');
INSERT INTO ingredients VALUES(32,'Penne Pasta');
INSERT INTO ingredients VALUES(33,'Chicken Breast');
INSERT INTO ingredients VALUES(34,'Sun Dried Tomatoes');
INSERT INTO ingredients VALUES(35,'Heavy Whipping Cream');
INSERT INTO ingredients VALUES(36,'Balsamic Vinegar');
INSERT INTO ingredients VALUES(37,'Parmesan Cheese');
INSERT INTO ingredients VALUES(38,'Egg');
INSERT INTO ingredients VALUES(39,'White Sugar');
INSERT INTO ingredients VALUES(40,'Meat');
INSERT INTO ingredients VALUES(41,'Chili Powder');
INSERT INTO ingredients VALUES(42,'Paprika');
CREATE TABLE recipe_ingredients (
  recipe_id INTEGER NOT NULL,
  ingredient_id INTEGER NOT NULL,
  display_order INTEGER NOT NULL,
  quantity VARCHAR(255) NOT NULL, -- Text is simpler than trying to store all units
  notes_markdown TEXT NOT NULL,

  PRIMARY KEY (recipe_id, ingredient_id),
  FOREIGN KEY (recipe_id) REFERENCES recipes(id) ON DELETE CASCADE,
  FOREIGN KEY (ingredient_id) REFERENCES ingredients(id) ON DELETE RESTRICT
);
INSERT INTO recipe_ingredients VALUES(1,1,1,'½ Chopped','');
INSERT INTO recipe_ingredients VALUES(1,2,2,'1 Cup','');
INSERT INTO recipe_ingredients VALUES(1,3,3,'1 Cup','');
INSERT INTO recipe_ingredients VALUES(1,4,4,'½ Stick','');
INSERT INTO recipe_ingredients VALUES(1,5,5,'2 Tablespoons','');
INSERT INTO recipe_ingredients VALUES(1,6,6,'½ Cup','');
INSERT INTO recipe_ingredients VALUES(1,7,7,'3 Cups','');
INSERT INTO recipe_ingredients VALUES(1,8,8,'1 Cup','');
INSERT INTO recipe_ingredients VALUES(1,9,9,'12 Ounce Package','Steamed in bag for 4 minutes');
INSERT INTO recipe_ingredients VALUES(1,10,10,'2 Cups','');
INSERT INTO recipe_ingredients VALUES(1,11,11,'1 Teaspoon','');
INSERT INTO recipe_ingredients VALUES(1,12,12,'½ Teaspoon','');
INSERT INTO recipe_ingredients VALUES(1,13,13,'¼ Teaspoon','');
INSERT INTO recipe_ingredients VALUES(2,14,1,'1 Pound','');
INSERT INTO recipe_ingredients VALUES(2,1,2,'1 Chopped','');
INSERT INTO recipe_ingredients VALUES(2,15,3,'1 Chopped','Can do a combination of red, yellow or orange bell peppers to add more color');
INSERT INTO recipe_ingredients VALUES(2,16,4,'1 Can','**With liquid**');
INSERT INTO recipe_ingredients VALUES(2,17,5,'1 Can','**With liquid**');
INSERT INTO recipe_ingredients VALUES(2,18,6,'1 Jar (12 oz.)','');
INSERT INTO recipe_ingredients VALUES(2,19,7,'1 Jar (16 oz.)','');
INSERT INTO recipe_ingredients VALUES(2,20,8,'1 Can','Diced tomatoes with green chilies (10 oz.) from Trader Joe''s');
INSERT INTO recipe_ingredients VALUES(2,21,9,'3 Tablespoons (or 1 Package)','');
INSERT INTO recipe_ingredients VALUES(2,22,10,'1 Package (16 oz.)','From Trader Joe''s');
INSERT INTO recipe_ingredients VALUES(2,23,11,'4 or 5 Tablespoons','');
INSERT INTO recipe_ingredients VALUES(3,4,1,'1 Stick','');
INSERT INTO recipe_ingredients VALUES(3,24,2,'2 Cups','I do 1 cup of white flour and 1 cup of whole wheat flour');
INSERT INTO recipe_ingredients VALUES(3,25,3,'3 Teaspoons','');
INSERT INTO recipe_ingredients VALUES(3,11,4,'½ Teaspoon','');
INSERT INTO recipe_ingredients VALUES(3,8,5,'¾ Cup','With **apple cider vinegar** to make buttermilk');
INSERT INTO recipe_ingredients VALUES(4,26,1,'1 Cup','Microwave for 1 minute');
INSERT INTO recipe_ingredients VALUES(4,11,2,'½ Teaspoon','');
INSERT INTO recipe_ingredients VALUES(4,5,3,'2 Tablespoons','');
INSERT INTO recipe_ingredients VALUES(4,27,4,'2 Teaspoons','');
INSERT INTO recipe_ingredients VALUES(4,24,5,'3 Cups','I do 1 cup of white flour and 2 cups of whole wheat flour');
INSERT INTO recipe_ingredients VALUES(4,28,6,'2 Teaspoons','');
INSERT INTO recipe_ingredients VALUES(7,26,1,'1 Cup','');
INSERT INTO recipe_ingredients VALUES(7,11,2,'1 Teaspoon','');
INSERT INTO recipe_ingredients VALUES(7,27,3,'¼ Cup','');
INSERT INTO recipe_ingredients VALUES(7,38,4,'1','');
INSERT INTO recipe_ingredients VALUES(7,24,5,'3 ¼ Cups','I use 1 ¼ cups of white flour and 2 cups of whole wheat flour');
INSERT INTO recipe_ingredients VALUES(7,28,6,'2 Teaspoons','');
INSERT INTO recipe_ingredients VALUES(6,32,1,'1 Pound','');
INSERT INTO recipe_ingredients VALUES(6,9,2,'4 Cups','');
INSERT INTO recipe_ingredients VALUES(6,1,3,'1 Chopped','Sauteed');
INSERT INTO recipe_ingredients VALUES(6,33,4,'½ Pound','');
INSERT INTO recipe_ingredients VALUES(6,34,5,'¾ Cup','');
INSERT INTO recipe_ingredients VALUES(6,35,6,'1 Cup','');
INSERT INTO recipe_ingredients VALUES(6,7,7,'½ Cup','');
INSERT INTO recipe_ingredients VALUES(6,36,8,'2 Tablespoons','');
INSERT INTO recipe_ingredients VALUES(6,11,9,'1 Teaspoon','');
INSERT INTO recipe_ingredients VALUES(6,12,10,'¼ Teaspoon','');
INSERT INTO recipe_ingredients VALUES(6,37,11,'¾ Cup','Grated');
INSERT INTO recipe_ingredients VALUES(5,14,1,'1 Pound','');
INSERT INTO recipe_ingredients VALUES(5,15,2,'1 Chopped','');
INSERT INTO recipe_ingredients VALUES(5,1,3,'½ Chopped','');
INSERT INTO recipe_ingredients VALUES(5,29,4,'1 Bottle','');
INSERT INTO recipe_ingredients VALUES(5,30,5,'1 Package','');
INSERT INTO recipe_ingredients VALUES(5,31,6,'1 Bag','');
INSERT INTO recipe_ingredients VALUES(8,38,1,'1','');
INSERT INTO recipe_ingredients VALUES(8,11,2,'½ Teaspoon','');
INSERT INTO recipe_ingredients VALUES(8,8,3,'1 Cup','');
INSERT INTO recipe_ingredients VALUES(8,6,4,'1 Cup','');
INSERT INTO recipe_ingredients VALUES(8,39,5,'1 Teaspoon','');
INSERT INTO recipe_ingredients VALUES(8,5,6,'½ Teaspoon','');
INSERT INTO recipe_ingredients VALUES(9,40,1,'1 Pound','Ground beef or ground turkey');
INSERT INTO recipe_ingredients VALUES(9,1,2,'½ Chopped','');
INSERT INTO recipe_ingredients VALUES(9,15,3,'1 Chopped','');
INSERT INTO recipe_ingredients VALUES(9,20,4,'2 Cans','');
INSERT INTO recipe_ingredients VALUES(9,16,5,'1 Can','');
INSERT INTO recipe_ingredients VALUES(9,12,6,'1 Tablespoons','');
INSERT INTO recipe_ingredients VALUES(9,11,7,'1 Tablespoon','');
INSERT INTO recipe_ingredients VALUES(9,41,8,'Generous Amount','');
INSERT INTO recipe_ingredients VALUES(9,42,9,'Generous Amount','');
CREATE TABLE tags (
  id VARCHAR(255) NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description_markdown TEXT NOT NULL
);
INSERT INTO tags VALUES('unleavened','Unleavened','Recipes for the **Days of Unleavened Bread**');
INSERT INTO tags VALUES('sabbath','Sabbath','Meals we eat on a **Sabbath** night dinner');
INSERT INTO tags VALUES('winter','Winter Meals','Meals that are good during the winter');
INSERT INTO tags VALUES('soup','Soup','');
INSERT INTO tags VALUES('baked','Baked Goods','');
INSERT INTO tags VALUES('dessert','Dessert','Desserts and other sweets');
INSERT INTO tags VALUES('pasta','Pasta Dish','');
INSERT INTO tags VALUES('mexican','Mexican Dish','');
CREATE TABLE recipe_tags (
  recipe_id INTEGER NOT NULL,
  tag_id VARCHAR(255) NOT NULL,
  PRIMARY KEY (recipe_id, tag_id),
  FOREIGN KEY (recipe_id) REFERENCES recipes(id) ON DELETE CASCADE,
  FOREIGN KEY (tag_id) REFERENCES tags(id) ON DELETE CASCADE
);
INSERT INTO recipe_tags VALUES(1,'soup');
INSERT INTO recipe_tags VALUES(1,'winter');
INSERT INTO recipe_tags VALUES(2,'soup');
INSERT INTO recipe_tags VALUES(2,'winter');
INSERT INTO recipe_tags VALUES(3,'baked');
INSERT INTO recipe_tags VALUES(4,'baked');
INSERT INTO recipe_tags VALUES(7,'baked');
INSERT INTO recipe_tags VALUES(7,'sabbath');
INSERT INTO recipe_tags VALUES(6,'pasta');
INSERT INTO recipe_tags VALUES(5,'mexican');
INSERT INTO recipe_tags VALUES(8,'baked');
INSERT INTO recipe_tags VALUES(9,'soup');
INSERT INTO recipe_tags VALUES(9,'winter');
INSERT INTO recipe_tags VALUES(8,'unleavened');
CREATE INDEX recipes_name_index ON recipes (name);
COMMIT;
