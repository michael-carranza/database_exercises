select 'albums released after 1991' as 'Task 1';
select name from albums where release_date >1991;
delete from albums where release_date >1991;

select 'albums with the Disco genre' as 'Task 2';
select name from albums where genre = 'disco';
delete from albums where genre = 'disco';

select 'albums by Whitney Houston' as 'Task 3';
select name from albums where artist = 'Whitney Houston';
delete from albums where artist = 'Whitney Houston';