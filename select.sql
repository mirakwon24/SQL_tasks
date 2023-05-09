
SELECT name, year_of_publication  FROM album
where year_of = 2018;


SELECT name, duration FROM tracks
order by duration desc 
limit 1;

SELECT name  FROM tracks
where duration >= 3.5*60;


SELECT name, collection_year  FROM collection
where collection_year BETWEEN 2018 and 2021;


SELECT name  FROM singers
where name not like '% %';


SELECT name FROM tracks
WHERE LOWER(name) like '%my%' or LOWER(name) like '%мой%';