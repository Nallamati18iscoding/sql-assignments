
NOTE :-  I HAVE IMPORT THE DATA WITH THE HELP OF IMPOPRT WIZARD .



Q1. Query all columns for all American cities in the CITY table with populations larger than 100000.
The CountryCode for America is USA.

sol) 
  select * from city where CountryCode='USA' and population > 100000;



Q2. Query the NAME field for all American cities in the CITY table with populations larger than 120000.
The CountryCode for America is USA.

solution)

 select name from city where COUNTRYCODE='USA' and population >120000;

Q3. Query all columns (attributes) for every row in the CITY table.

solution)

 select * from city;
Q4. Query all columns for a city in CITY with the ID 1661.

solution) select * from city where id=1661;


Q5. Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is
JPN.

solution)

select * from city where CountryCode='JPN';


Q6. Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is
JPN.

solution)

select name from city where CountryCode='JPN';


Q7. Query a list of CITY and STATE from the STATION table.
where LAT_N is the northern latitude and LONG_W is the western longitude.

sol )  select city , state from station;


Q8. Query a list of CITY names from STATION for cities that have an even ID number. Print the results
in any order, but exclude duplicates from the answer.
The STATION table is described as follows:
where LAT_N is the northern latitude and LONG_W is the western longitude

sol)  select distinct city from station where id%2=0;


Q9. Find the difference between the total number of CITY entries in the table and the number of
distinct CITY entries in the table.
The STATION table is described as follows:
where LAT_N is the northern latitude and LONG_W is the western longitude.
For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru',
there are 2 different city names: 'New York' and 'Bengalaru'. The query returns , because total number
of records - number of unique city names = 3-2 =1

sol)  select (count(city)-count(distinct city ))  as  diff_btw from  station; 


Q10. Query the two cities in STATION with the shortest and longest CITY names, as well as their
respective lengths (i.e.: number of characters in the name). If there is more than one smallest or
largest city, choose the one that comes first when ordered alphabetically.
The STATION table is described as follows:
where LAT_N is the northern latitude and LONG_W is the western longitude.
Sample Input
For example, CITY has four entries: DEF, ABC, PQRS and WXY.
Sample Output
ABC 3
PQRS 4
Hint -
When ordered alphabetically, the CITY names are listed as ABC, DEF, PQRS, and WXY, with lengths
and. The longest name is PQRS, but there are options for shortest named city. Choose ABC, because
it comes first alphabetically.
Note
You can write two separate queries to get the desired output. It need not be a single query.



sol) (select city,length(city) as len_city from station order by length(city),city limit 1)  
union 
(select city , length(city) as len_city from station order by length(city) desc ,city limit 1);     


second menthod)
with tmp as 
(select city , length(city) as lng_c,
row_number()over(order by  length(city),city ) as low_nu,
row_number() over(order by length(city) desc,city) as high_nu from station
)

select city,lng_c from tmp where low_nu=1 or high_nu = 1 order by lng_c;

Q11. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result
cannot contain duplicates.

sol)  select distinct city  from station where  left(city,1) in ( 'a','i','e','o','u');  


Q12. Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot
contain duplicates.

sol)  select distinct city  from station where  right (city,1) in ( 'a','i','e','o','u');  

Q13. Query the list of CITY names from STATION that do not start with vowels. Your result cannot
contain duplicates.

sol)  select distinct city  from station where  left(city,1) not in ( 'a','i','e','o','u');  
.
Q14. Query the list of CITY names from STATION that do not end with vowels. Your result cannot
contain duplicates.

sol) select distinct city  from station where  right (city,1)  not in ( 'a','i','e','o','u');  

Q15. Query the list of CITY names from STATION that either do not start with vowels or do not end
with vowels. Your result cannot contain duplicates.


sol)   select distinct city from station where left(city,1) NOT IN ( 'a','i','e','o','u')or
right(city,1) not in ( 'a','i','e','o','u');

Q16. Query the list of CITY names from STATION that do not start with vowels and do not end with
vowels. Your result cannot contain duplicates

sol)   select distinct city from station where left(city,1) NOT IN ( 'a','i','e','o','u')
and
    right(city,1) not in ( 'a','i','e','o','u');