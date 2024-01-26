
create database record_company;

USE RECORD_COMPANY;
show tables;
select * from bands;
select * from albums;
select * from songs;

CREATE TABLE songs (
    id INT,
    name VARCHAR(100),
    length INT,
    album_id INT
);





#### Q15 Find the album which released in 2008 to 2013. --
SELECT 
    name, release_year
FROM
    albums
WHERE
    release_year <= 2013
        AND release_year >= 2008; 

#### Q15 using between clause -- 
SELECT * from albums where release_year BETWEEN 2008 and 2013 ORDER BY release_year desc ;
SELECT * from albums where release_year BETWEEN 2008 and 2013 ORDER BY release_year  ;

#### Q8 --
insert into albums (id, name, release_year, band_id) values (19, 'Stayin Alive', 1977, 8);

#### Q9 --
delete from bands where id = 8; 
delete from albums where band_id = 8; 
insert into bands (id, name) values (8, 'Bee Gees');

### Q12 joining the three tables --
SELECT 
*
FROM
    bands b,
    albums a,
    songs s
WHERE
    b.id = a.band_id AND a.id = s.album_id;
    
    
#### joining tables bands and albums --
SELECT * FROM bands b, albums a
WHERE  b.id = a.band_id;

#### joining table albums and songs --
SELECT * FROM albums a, songs s
WHERE  a.id = s.album_id;

SELECT NAME FROM ALBUMS ORDER BY NAME ASC;
SELECT  NAME FROM ALBUMS GROUP BY 'The';
SELECT * FROM ALBUMS;
#### Q-14 FILTER THE ALBUMS WHICH START WITH THE WORD 'the' --
SELECT * FROM ALBUMS WHERE NAME LIKE 'THE %';


#### Q11 
SELECT * FROM albums a, songs s
WHERE  a.id = s.album_id


#### q3 select only the names of all Bands from the songs table
SELECT * from bands INNER JOIN albums ON bands.id = albums.band_id
INNER JOIN songs ON songs.id = songs.album_id;

### q3
SELECT * from bands LEFT OUTER JOIN albums ON bands.id = albums.band_id
INNER JOIN songs ON songs.id = songs.album_id;


#### q4
SELECT NAME FROM ALBUMS WHERE RELEASE_YEAR <= 1990;


