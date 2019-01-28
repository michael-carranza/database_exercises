use codeup_test_db;
select * from albums;
UPDATE albums
SET sales = sales*10;
select * from albums;

select * from albums where release_date <1980;
UPDATE albums
SET release_date = (release_date-100)
where release_date <1980;
select * from albums where release_date <1980;

select * from albums where artist like '%Jackson%';
update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';
select * from albums where artist like '%Jackson%';
