USE project;
/*In this project, you’re going to make your own table with some small set of “famous people”, then
make more tables about things they do and join those to create nice human readable lists.
For example, here are types of famous people and the questions your data could answer:
● Movie stars: What movies are they in? Are they married to each other?
● Singers: What songs did they write? Where are they from?
● Authors: What books did they write?
● Fictional characters: How are they related to other characters? What books do they show
up in?--*/
CREATE TABLE famous_people (id INTEGER PRIMARY KEY auto_increment,Stage_name TEXT, fullname
TEXT,age INTEGER, marital_status TEXT,Nationality TEXT );
INSERT INTO famous_people (Stage_name, fullname
,age, marital_status,Nationality ) VALUES ("Beyonce","Beyoncé Giselle Knowles-Carter",41 ,"Married","American");
INSERT INTO famous_people (Stage_name, fullname
,age, marital_status,Nationality ) VALUES ("Jay_Z","Shawn Corey Carter ",53,"Married","American");
INSERT INTO famous_people (Stage_name, fullname
,age, marital_status,Nationality ) VALUES ("Rihanna","Robyn Rihanna Fenty NH",35,"Single","Barbarian");
INSERT INTO famous_people (Stage_name, fullname
,age, marital_status,Nationality ) VALUES ("Celione Dion","Céline Marie Claudette Dion",54,"Widowed","Canadian");
INSERT INTO famous_people (Stage_name, fullname
,age, marital_status,Nationality ) VALUES ("Cece Winans","Priscilla Marie Winans Love",58,"Married","American");
INSERT INTO famous_people (Stage_name, fullname
,age, marital_status,Nationality ) VALUES ("Adele","Adele Laurie Blue Adkins MBE",34,"Divorced","British");
CREATE TABLE popular_songs (id INTEGER PRIMARY KEY auto_increment,Title TEXT , Year_released INTEGER );
INSERT INTO popular_songs(Title,Year_released)VALUES("Single ladies", 2008);
INSERT INTO popular_songs(Title,Year_released)VALUES("Run this down", 2009);
INSERT INTO popular_songs(Title,Year_released)VALUES("Diamonds", 2012);
INSERT INTO popular_songs(Title,Year_released)VALUES("My heart will go on", 1997);
INSERT INTO popular_songs(Title,Year_released)VALUES("Goodness of God", 2021);
INSERT INTO popular_songs(Title,Year_released)VALUES("Easy of me", 2009);
SELECT*FROM famous_people;
SELECT*FROM popular_songs;

SELECT fp.id, Stage_name,Fullname,Age,Nationality,Title as "Song title",Year_released FROM famous_people fp
JOIN popular_songs ps
ON ps.id=fp.id;



