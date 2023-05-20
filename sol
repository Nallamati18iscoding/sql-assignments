create database SQLtest;
use SQLtest;

(
  id INT,
  name VARCHAR(17),
  country_code VARCHAR(10),
  district VARCHAR(20),
  population BIGINT
);

import the data 

-- download the file 
-- create new scma and import data into it

--q1 

select * from city where country_code ='USA' AND population > 100000;

--q2
select name as ccityname from city where country_code='usa' and population>120000;


--q3

select id, name, country_code,district,population from city;

--q4

select * from city where id = 1661;

--q5 
select * from city where country_code='JPN';

--q6 

select name as allcitynames from city where country_code='JPN';


#import data into sql workbench  of station

--q7
select city,state from station;

--q8

select city from station where id%2=0;

--9

