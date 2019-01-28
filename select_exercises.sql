use codeup_test_db;

SELECT 'Albums by Pink Floyd' AS 'Question 1';
select name from albums where artist='Pink Floyd';

SELECT 'The year Sgt. Peppers Lonely Hearts Club Band was released' AS 'Question 2';
select release_date from albums where name like '%Sgt. Pepper%';

SELECT 'The genre for Nevermind' AS 'Question 3';
select genre from albums where name = 'Nevermind';

SELECT 'Albums released in the 1990s' AS 'Question 4';
select name from albums where release_date between 1990 and 1999;

SELECT 'Albums with less than 20 million certified sales' AS 'Question 5';
select name from albums where sales < 20;

Select 'All the albums with a genre of "Rock"' AS 'Question 6';
select name from albums where genre like '%rock%';