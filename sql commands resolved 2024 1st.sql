 --- Identify the primary keys and foreign keys in maven movies db. Discuss the differences 
-- 1. PRIMARY KEY IN ANY TABLE'S PRIMARY COLUMN PRIMARY KEY AND FOREIGN KEY PRIMARY COLUMN IN ANY OTHER TABLE'S OTHER PLACES COLUMN ATTACHED FOREIGN KEY
Select * from customer;------ customer_id is primary key 
select * from rental; ----- customer_id is foreign key 

-- List all details of actors
Select first_name, last_name from actor; 

-- List all customer information from DB 
select * from customer;

-- List different countries 
select country from country;

 -- Display all active customers 
 select first_name, last_name, active from customer where active = '1';
 
 --  List of all rental IDs for customer with ID 1 
 
select rental_id, customer_id from rental where customer_id = 
(select customer_id from customer where customer_id = '1');

-- Display all the films whose rental duration is greater than 5 
select title, rental_duration from film where rental_duration>5;

-- List the total number of films whose replacement cost is greater than $15 and less than $20 
select count(title) from film where replacement_cost>15 and replacement_cost<20; 

-- Display the count of unique first names of actors. 
select  count(first_name) from actor;

-- Display the first 10 records from the customer table 
select * from customer where customer_id limit 10;

-- Display the first 3 records from the customer table whose 
-- first name starts with ‘b’ 
select * from customer where first_name like 'b%' limit 3;

-- Display the names of the first 5 movies which are rated as ‘G’ 
select * from film where rating like 'G%' limit 5;

-- Find all customers whose first name starts with "a". 
select * from customer where first_name like 'a%';

--  Find all customers whose first name ends with "a". 
select * from customer where first_name like '%a';

--  Display the list of first 4 cities which start and end with ‘a’ 
select * from city where city like 'a%a';

--  Find all customers whose first name have "NI" in any position  
select * from customer where first_name like '%NI%';

-- Find all customers whose first name have "r" in the second position
select * from customer where first_name like '_r%'; 

-- Find all customers whose first name starts with "a" and are at least 5 characters in length 
select * from customer where first_name  like 'a%' and  length(first_name) = 5;

--  Find all customers whose first name starts with "a" and ends with "o" 
 select * from customer where first_name like 'a%o' ;
 
 --  Get the films with pg and pg-13 rating using IN operator 
 select * from film;
select title, rating from film where film_id IN 
(select film_id from film where rating= 'PG') ;

--  Get the films with length between 50 to 100 using between operator 
select * from film where length between 50 and 100; 

-- Get the top 50 actors using limit operator 
select * from actor where actor_id limit 50; 

-- Get the distinct film ids from inventory table 
select distinct(film_id) from inventory; 
