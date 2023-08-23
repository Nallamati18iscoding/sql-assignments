
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


