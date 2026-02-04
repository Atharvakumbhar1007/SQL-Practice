-- and last_name ends with S -> 2conditions -true -> and
select * from actor
where first_name like "%R%" and last_name like "%S";

-- limit 
select * from actor
where actor_id <=5;
-- top 5 rows
select * from actor
limit 5;
select * from actor
limit 10;

-- limit / offset 
-- find actors between 10 to 20
select * from actor
limit 10 offset 10;

-- select * from actor
-- limit 5 offset 3;
