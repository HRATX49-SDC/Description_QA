DROP DATABASE IF EXISTS purrget;

CREATE DATABASE purrget;

USE purrget;

CREATE TABLE categories (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  category VARCHAR(255) NOT NULL
);

CREATE TABLE cats (
  cID INT AUTO_INCREMENT PRIMARY KEY,
  catName VARCHAR(255) NOT NULL UNIQUE,
  age INT NOT NULL,
  livesLeft INT NOT NULL,
  sex VARCHAR(255),
  categoryID INT NOT NULL,
  FOREIGN KEY (categoryID)
    REFERENCES categories(ID)
);

CREATE TABLE specifications (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  catID INT NOT NULL,
  size VARCHAR(255),
  mouseCount INT,
  dogFriend VARCHAR(255),
  in_out VARCHAR(255),
  itemNum INT NOT NULL,
  FOREIGN KEY (catID)
    REFERENCES cats(cID)
);

CREATE TABLE questions (
  qID INT AUTO_INCREMENT PRIMARY KEY,
  catID INT NOT NULL,
  question VARCHAR(255),
  qUser VARCHAR(255),
  dateAdded VARCHAR(255),
  FOREIGN KEY (catID)
	  REFERENCES cats(cID)
);

CREATE TABLE answers (
  aID INT AUTO_INCREMENT PRIMARY KEY,
  questionID INT NOT NULL,
  answer VARCHAR(255),
  aUser VARCHAR(255),
  anwDateAdded VARCHAR(255),
  FOREIGN KEY (questionID)
	  REFERENCES questions(qID)
);


INSERT INTO categories (category) VALUES ('Floof');
INSERT INTO categories (category) VALUES ('Chonk');
INSERT INTO categories (category) VALUES ('Hairless');
INSERT INTO categories (category) VALUES ('Adorable');


INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Gizmo', 4, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Kimono', 3, 7, 'Female', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Tuxedo', 2, 9, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Xito', 1, 9, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Covid', 8, 2, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Grumps', 10, 1, 'Female', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Midnyght', 1, 9, 'Female', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Sassy', 12, 3, 'Female', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Luna', 1, 8, 'Female', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Ash', 2, 9, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Walnut', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Sphynx', 15, 1, 'Male', 3);


INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Oliver', 5, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Bella', 5, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Simba', 5, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Chloe', 5, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Max', 5, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Lucy', 5, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Lily', 5, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Nala', 5, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Sophie', 5, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Milo', 5, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Rocky', 5, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Coco', 5, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Charlie', 5, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Smokey', 5, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Mia', 5, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Jack', 5, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Angel', 5, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Tigger', 5, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Oreo', 5, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Shadow', 5, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Felix', 5, 5, 'Male', 4);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Willow', 5, 5, 'Male', 4);


INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Romeo', 5, 5, 'Male', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Molly', 5, 5, 'Male', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Tiger', 5, 5, 'Male', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Sammy', 5, 5, 'Male', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Jasper', 5, 5, 'Male', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Biscuit', 5, 5, 'Male', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Bailey', 5, 5, 'Male', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Gracie', 5, 5, 'Male', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Loki', 5, 5, 'Male', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Sasha', 5, 5, 'Male', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Simon', 5, 5, 'Male', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Toby', 5, 5, 'Male', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Ruby', 5, 5, 'Male', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Cleo', 5, 5, 'Male', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Peanut', 5, 5, 'Male', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Oscar', 5, 5, 'Male', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Leo', 5, 5, 'Male', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Lucky', 5, 5, 'Male', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Buddy', 5, 5, 'Male', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Daisy', 5, 5, 'Male', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Jasmine', 5, 5, 'Male', 1);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Callie', 5, 5, 'Male', 1);

INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Pepper', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Leon', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Lola', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Kitty', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Patches', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Princess', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Missy', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Lulu', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Mittens', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Sebastian', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Abby', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Orion', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Yuki', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Scout', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Sadie', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Cupcake', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('George', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Butters', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Cuddles', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Boots', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Whiskers', 5, 5, 'Male', 2);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Mr. Snuffles', 5, 5, 'Male', 2);

INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Sheba', 5, 5, 'Male', 3);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Daenerys', 5, 5, 'Male', 3);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Tiffany', 5, 5, 'Male', 3);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Stella', 5, 5, 'Male', 3);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Ella', 5, 5, 'Male', 3);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Gypsy', 5, 5, 'Male', 3);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Alice', 5, 5, 'Male', 3);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Penny', 5, 5, 'Male', 3);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Cooper', 5, 5, 'Male', 3);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Harley', 5, 5, 'Male', 3);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Sam', 5, 5, 'Male', 3);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Garfield', 5, 5, 'Male', 3);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('NiuNiu', 5, 5, 'Male', 3);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Tucker', 5, 5, 'Male', 3);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Bandit', 5, 5, 'Male', 3);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Candy', 5, 5, 'Male', 3);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Ziggy', 5, 5, 'Male', 3);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Socks', 5, 5, 'Male', 3);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Rusty', 5, 5, 'Male', 3);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Batman', 5, 5, 'Male', 3);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Gatsby', 5, 5, 'Male', 3);
INSERT INTO cats (catName, age, livesLeft, sex, categoryID) VALUES ('Raven', 5, 5, 'Male', 3);

INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (1, 'Small', 11, 'Yes', 'Indoor/Outdoor', 74829);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (2, 'Small', 3, 'Yes', 'Indoor', 28465);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (3, 'Medium', 1, 'No', 'Outdoor', 57842);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (4, 'Large', 0, 'Yes', 'Indoor/Outdoor', 13758);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (5, 'Medium', 23, 'Yes', 'Outdoor', 28347);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (6, 'Medium', 4, 'No', 'Indoor', 75832);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (7, 'Small', 0, 'No', 'Indoor', 49563);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (8, 'Medium', 6, 'Yes', 'Indoor/Outdoor', 58739);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (9, 'Medium', 6, 'Yes', 'Indoor', 39275);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (10, 'Large', 2, 'Yes', 'Indoor', 78493);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (11, 'Small', 2, 'Yes', 'Indoor/Outdoor', 93847);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (12, 'Medium', 38, 'No', 'Indoor/Outdoor', 29384);


INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (13, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (14, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (15, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (16, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (17, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (18, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (19, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (20, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (21, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (22, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (23, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (24, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (25, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (26, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (27, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (28, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (29, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (30, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (31, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (32, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (33, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (34, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (35, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (36, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (37, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (38, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (39, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (40, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (41, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (42, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (43, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (44, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (45, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (46, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (47, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (48, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (49, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (50, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (51, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (52, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (53, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (54, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (55, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (56, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (57, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (58, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (59, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (60, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (61, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (62, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (63, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (64, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (65, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (66, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (67, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (68, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (69, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (70, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (71, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (72, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (73, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (74, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (75, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (76, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (77, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (78, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (79, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (80, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (81, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (82, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (83, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (84, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (85, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (86, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (87, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (88, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (89, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (90, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (91, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (92, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (93, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (94, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (95, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (96, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (97, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (98, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (99, 'Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (catID, size, mouseCount, dogFriend, in_out, itemNum) VALUES (100, 'Medium', 0, 'Yes', 'Outdoor', 55);

INSERT INTO questions (catID, question, qUser, dateAdded) VALUES (9, 'How much does this cat weigh?', 'kittylove20', '06/05/2020');
INSERT INTO answers (questionID, answer, aUser, anwDateAdded) VALUES (1, '5 pounds', 'Purrget', '06/18/2020');
INSERT INTO questions (catID, question, qUser, dateAdded) VALUES (9, 'What food does this cat eat?', 'kittylove20', '06/22/2020');
INSERT INTO questions (catID, question, qUser, dateAdded) VALUES (1, 'is this cat playful?', 'catzzzz08', '06/29/2020');
INSERT INTO questions (catID, question, qUser, dateAdded) VALUES (1, 'how old is this cat', 'kittykat25', '06/30/2020');
INSERT INTO answers (questionID, answer, aUser, anwDateAdded) VALUES (4, 'Please refer to the details tab.', 'Purrget', '06/31/2020');
INSERT INTO questions (catID, question, qUser, dateAdded) VALUES (2, 'what color is it?', 'catlove20', '06/01/2020');
INSERT INTO questions (catID, question, qUser, dateAdded) VALUES (3, 'does it like ribbons?', 'kittylove20', '06/20/2020');
INSERT INTO answers (questionID, answer, aUser, anwDateAdded) VALUES (6, 'Dont all cats like ribbons?', 'catlove20', '07/01/2020');
INSERT INTO questions (catID, question, qUser, dateAdded) VALUES (4, 'What food does this cat eat?', 'user1234', '06/07/2020');
INSERT INTO questions (catID, question, qUser, dateAdded) VALUES (7, 'What food does this cat eat?', 'newcatmom46', '06/14/2020');
INSERT INTO answers (questionID, answer, aUser, anwDateAdded) VALUES (8, 'Any cat food', 'purrgetlove15', '06/22/2020');
INSERT INTO questions (catID, question, qUser, dateAdded) VALUES (12, 'Will this cat live a long time?', 'newcatmom46', '03/07/2020');
INSERT INTO answers (questionID, answer, aUser, anwDateAdded) VALUES (9, 'I dont know. I bought this as a gift for someone else.', 'catmom90', '06/02/2020');
INSERT INTO questions (catID, question, qUser, dateAdded) VALUES (10, 'will it look the same as the picture?', 'yaycats32', '06/26/2020');
INSERT INTO answers (questionID, answer, aUser, anwDateAdded) VALUES (10, 'Yes', 'Purrget', '06/26/2020');
INSERT INTO questions (catID, question, qUser, dateAdded) VALUES (11, 'can you add more pictures?', 'yaycats32', '06/30/2020');
INSERT INTO answers (questionID, answer, aUser, anwDateAdded) VALUES (11, 'No, you can come to the store to view the cat', 'Purrget', '07/01/2020');