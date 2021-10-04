UPDATE albums
SET sales = sales * 10;

SELECT * FROM albums;

# Moving pre 80's albums to 1800s
UPDATE albums
SET release_date = release_date -100
WHERE release_date < 1980;

Select * FROM albums
WHERE release_date < 1980;


Select * FROM albums
WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
#Now there are no MJ albums.
Select * FROM albums
WHERE artist = 'Michael Jackson';
Select * FROM albums
WHERE artist = 'Peter Jackson';

