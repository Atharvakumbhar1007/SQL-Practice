





-- DAY1 AND 2--
-- use sakila;

-- show tables;

-- use world;
--  show tables;

-- use sakila;
-- show tables;

-- select -> gives result set
-- select 5;

-- select * from actor;

-- select * from payment;

-- select first_name, last_name from customer;

-- ARITHMATIC OPERATOR --
-- select 11*56 as multiply, 11/3 as division, 
-- 11%3 as remainder, 11 div 3 integer_division;

-- select * from film;
-- select film_id, title, rental_rate as rental_rate_usd,
-- rental_rate * 85 as rental_rate_inr from film;

-- select rental_rate * 85 from film;

-- DAY3 --
-- relational Operator (where)

-- use sakila;

-- select * from actor;
-- -- find all actor whose id is less then 10
-- select * from actor where actor_id <= 10;

-- select * from actor where actor_id = 10;

-- select * from actor where actor_id != 10;

-- select * from actor where actor_id < 10;

-- find all actor whose frist_name is penelope

-- select * from actor
-- where first_name != "penelope";

-- LOGICAL OPERATOR --

-- Find all actors whose first name is penelope and
-- their id is less than 100

-- select * from actor
-- where first_name != "penelope" and actor_id<100;

-- find all actors who id is in range 20 to 30
-- >= 20 nad <= 30

-- select * from actor
-- where actor_id >= 20 and actor_id<=30;

-- find all actors from first_name list
-- ("penelope", "ED","Rohit","Adam")

-- select * from actor
-- where first_name = "penelope" or
-- first_name = "ED" or
-- first_name = "Rohit"or
-- first_name = "Adam";

-- select * from actor
-- where first_name = "Rohit" 
-- or actor_id = 198;

-- select * from actor
-- where first_name = "Rohit" 
-- and actor_id = 198;

-- -- find all actor whos id is in range 20 to 30
-- -- >= 20 and <= 30
-- select * from actor
-- where actor_id between 20 and 30;

-- -- find all actor whos id is in range 20 to 30
-- -- >= 20 and <= 30 and there first name isED

-- select * from actor
-- where actor_id between 0 and 100 and first_name = "ED";

-- -- find actor between 15 to 20 as well as 50 to 60
-- -- as well as 2 to 5

-- select * from actor
-- where actor_id between 15 and 20
-- or actor_id between 50 and 60
-- or actor_id between 2 and 5;

-- -- find all actors from first_name list
-- -- ("penelope", "ED","Rohit","Adam")
-- -- same column when we  have to fetch values 
--  -- in clause
--  
--  select * from actor
-- where first_name = "penelope" or
-- first_name = "ED" or
-- first_name = "Rohit"or
-- first_name = "Adam";

--  select * from actor
-- where first_name in ("penelope", "ED","Rohit","Adam");

-- DAY 4 --

-- Find all the actors whose first name start with A 

/* LIKE (WILDCARDS) PATTERN MATCHING
% -> MEANS ANY CHARACTERS AND ANY LENGTH
_ -> RESTRICT LENGTH ()
*/

-- select * from actor 
-- where first_name like "A%";

-- select * from actor 
-- where first_name like "%A%";

-- -- first_name end with alter

-- select * from actor
-- where first_name like "%AL%";

-- Find all actors whose first name have only 4 characters

-- select * from actor
-- where first_name like "A___";
--  
-- select * from actor
-- where first_name like "A__E";

-- Find all actors whose first name contains R at any place
-- and last_name end with S

-- select * from actor;
-- where first_name like "%R%" and last_name like "%S";

-- limit

-- select * from actor
-- where actor_id <=5;

-- -- top 5 rows

-- select * from actor 
-- limit 10;

-- select * from actor 
-- limit 1;

-- -- limit / offset
-- -- find actors between 10 to 20

-- select * from actor
-- limit 5 offset 3;

-- DAY 5 --

-- sorting 
/*
1.ASCENDING
2.DESCENDING -> desc
*/
-- use sakila;

-- select * from customer
-- order by customer_id; -- default asce


-- select * from customer
-- order by customer_id desc;


-- select * from customer
-- order by store_id desc;

-- -- Multi level sorting

-- select * from actor
-- order by first_name; -- ASC

-- select * from customer
-- order by first_name desc;

-- -- SORT FIRST_NAME IN DESC BUT IF REPEATED THEN SORT
-- -- BY ACTOR_ID IN ASC

-- select * from customer
-- order by first_name , actor_id;

-- fetch the top 10 actors, ssorted by last_name
-- and then by first_name if last name are the same.


-- select * from actor
-- order by last_name, first_name limit 10;

-- -- 2. Display films ordered by length so the longest films come first.

-- select * from film
-- order by length desc;

-- -- 3. Show films sorted by replacement_cost (highest first), and if two films have the same cost, then sort by title.

-- select * from film
-- order by replacement_cost desc, title asc;

-- -- 4. Display all rentals ordered by rental_date from newest to oldest.

-- select * from rental
-- order by rental_date desc;

-- How to find unique values from data set

-- use world ;
-- show tables;
-- select * from country;

-- -- find all the continents

-- select continent from country;
-- select distinct continent from country;

-- DAY6 --

-- AGGREGATE FUNCTION

-- use world;

-- show tables;

-- select * from country;
-- -- ERROR -> Invalid use of group by ...
-- select sum(population) from country;
-- select sum(population) as total_population from country;

-- -- -- find maximum population from world 
-- -- select max(population) as maximum_population from country;
-- -- select * from country
-- -- where population = 1277558000; -- static fixed values

-- -- -- ERROR
-- -- select * from country
-- -- where population = max(population);

-- select min(population) as min_pop from country;
-- select * from country where population = 0;

-- select count(population) as total_countries from country;
-- select count(*) from country;
-- select sum(population) as total_population,
-- avg(population) as average_population from country;

-- select * from country
-- order by continent;

-- select continent, sum(population) from country
-- group by continent;

-- -- find number of country in each continent

-- select continent, count(*) as num_of_countries from country
-- group by continent;

-- -- find number of countries in each continent
-- -- where country ciunt is more than 30

-- -- whenever we create column by formula or by function
-- -- generated columns

-- -- select countinent, count(*) as country_count
-- -- from country
-- -- group by continent
-- -- having country_count > 30;

-- -- find all countries where indepyear have null values

-- select * from country
-- where indepyear is not null;

-- in | not in 
-- between | not between

-- DAY 7

-- DDL | DML
create database sprk_goodnight;
use sprk_goodnight;

-- table 