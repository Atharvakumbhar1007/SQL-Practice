use sakila

-- find all film whose rental rate is more than 3

 select * from film 
 where rental_rate > 3;

-- Find all films whose title contains DEVIL at any position or title contains AFFAIR at any position or title have FAMILY at start. 

select * from film 
where title like '%DEVIL%' or title like '%AFFAIR%' or title like 'FAMILY%';    

-- Find all films whose ids are 10,30,100,1,990

select * from film 
where film_id = 10 or film_id = 30 or film_id = 100 or film_id = 1 or film_id = 990;

-- Find all films whose length is more than 100 mins

select * from film 
where length > 100;

-- find top 5 films

select * from film 
limit 5;

-- find 5 films skip first 5 rows

select * from film 
limit 5  offset 5;


-- find films in range 25 to 30

select * from film 
limit 6 offset 24;

-- Find films in range 60 to 70 as well as 100 to 105

select * from film 
where film_id between 60 and 70
   OR film_id between 100 and 105;
   
-- 9 A) Pick only three columns: film_id, title, and rental_rate

select film_id, title, rental_rate
from film

-- 9 B) The rental_rate is given in US Dollars (USD). Convert it into Indian Rupees (INR) using this rate:
--              1 USD = 87.4 INR. Name this new column rental_rate_inr.


-- 9 C) After converting to INR, add 18% tax to it. Create another column for this value and name it rental_rate_inr_tax.


-- 10. Retrieve all films that are either family-friendly ratings (PG or G rating considered as Family Friendly) and at the same time have a rental rate cheaper than 3.0.




