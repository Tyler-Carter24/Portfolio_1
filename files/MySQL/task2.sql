select Count(*) as USA_cities from city where Countrycode = 'USA';
 SELECT country_name, lifeexpectancy FROM country order by lifeexpectancy desc;
 select * from city where name like 'New%';
 SELECT Country_name , population FROM country where population >= 111506000 order by population desc;
 select * from city where name like 'Be%';
 SELECT name, population FROM city WHERE population BETWEEN 500000 AND 1000000;
 select * from city order by name asc;
-- select name, population from city order by population desc limit 1;
-- this one still needs work
-- select (select distinct name from city)as unique_names;

 select name, population from city order by population asc limit 1;
 select country_name, population from country order by population desc limit 1;

 select ID, name from city where ID = (select capital from country where country_name = 'Spain');
 select name from city where countrycode in (select code from country where continent = 'Europe');
 select avg(population) from country;
 select name, population from city where ID in (select capital from country);
 select country_name, population, (population/surfacearea) as population_density from country where population > 0 order by population_density asc limit 30;
 select country_name, gnp, (gnp/population) as gnp_per_capita from country order by gnp_per_capita desc limit 30;
 select * from city order by population desc limit 10 offset 30;

SELECT name, COUNT(*) AS city_count FROM city GROUP BY name ORDER BY name ASC;
