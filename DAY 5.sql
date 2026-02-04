-- Q1
-- use sakila;
-- select * from rental;
-- select count(*) as rental_datenull from rental
-- where rental_date is null;

-- Q2
-- select * from address;
-- select count(*) as postal_code_isnull from address
-- where postal_code is null;

-- Q3
-- select * from film;
-- select rating, avg(length) as avg_length from film
-- group by rating
-- having avg_length > 100;

-- Q4
-- use world;
-- select * from country;
-- select continent, avg(lifeexpectancy) as avg_lifeexpectancy from country
-- group by continent;

-- Q5
-- select * from country;
-- select continent, min(lifeexpectancy) as min_lifeexpectancy,
-- max(lifeexpectancy) as max_lifeexpectancy from country 
-- group by continent;-- 

-- Day 5

-- Aggregate Function

use world;

show tables;
select * from country;
-- Error -> Invalid use of group by ....
select name, sum(population) from country;
select sum(population) as total_population from country;

-- find maximum population from world
select max(population) as maximum_population from country;
select * from country
where population = 12777558000; -- s tatic fixed value  
select * from country
where population = max(population);

select min(population) as min_pop from country;
select * from country where population = 0;

select count(population) as total_countries from country;

select count(indepyear) from country;

select count(indepyear) from country;
select count(*) from country;
select sum(population) as total_population, 
avg(population) as average_population
from country;

-- Find Sum of population in each continent
select * from country
where continent = "North America";

select continent, sum(population) as total_population 
from country where continent = "North America";

select continent, sum(population) as total_population 
from country where continent = "Asia";

select * from country
order by continent;

select continent, sum(population) from country
group by continent;

-- find number of countries in each continent
select continent, count(*) as num_of_countries from country
group by continent;

-- find number of countries in each continent 
-- where country count is more than 30

-- whenever we create column by formula or by functions ->
-- Generated columns

-- whenever we create column by formula or by function ->
-- generated columns
select count(*) as country_count
from country
group by continent
having country_count >30;

-- Find all countries where indepyear have null values
select * from country
where indepyear is null;

select * from country
where indepyear is not null;
