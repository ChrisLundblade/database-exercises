#Select All
SELECT * FROM albums;

# Select Specific Columns

SELECT name, id, artist FROM albums;

#Where clause

SELECT id, name, artist FROM albums
WHERE release_date < 1980;

#Operators

# Misc Output
SELECT 'Some output' AS Test;

#Actually doing the assignment here
SELECT name AS `Showing releases by Pink Floyd` FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date AS 'Showing year of Sgt. Pepper\'s' FROM albums
WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';

SELECT genre AS 'Nevermind genre' FROM albums
WHERE name = 'Nevermind';

SELECT name AS 'Showing albums released between 1990 and 1999' FROM albums
WHERE release_date between 1990 and 1999;

SELECT name AS 'Showing releases with fewer than 20M confirmed sales' FROM albums
WHERE sales < 20;

#This doesn't check the contents of the genre field for whether the letters Rock are in there
#Rather it checks if it says Rock exactly
SELECT  name AS 'Showing \'Rock\' releases' FROM albums
WHERE genre = 'Rock';