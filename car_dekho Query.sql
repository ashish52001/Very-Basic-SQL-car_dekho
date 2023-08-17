--Q1. Read data--

SELECT*FROM cars.car_dekho;

--Q2. Total cars: to get a count of total cars sold

SELECT COUNT(*) FROM car_dekho;

--Q3. How many cars will be available in 2023?--

SELECT  COUNT(*) FROM car_dekho 
WHERE year=2023;

--Q4. How many cars are available in the year 2021,2022,2023?

SELECT COUNT(*) FROM cars.car_dekho
WHERE year IN(2021,2022,2020) GROUP BY year;

--Q5. How many cars were sold in each year? With no other detals--

SELECT year, COUNT(*) FROM car_dekho 
GROUP BY year 

--Q6. How many diesel cars were sold in 2020?--

SELECT COUNT(*) FROM car_dekho 
WHERE year=2020 AND fuel= Diesel;

--Q7. Manager asks how to print all fuel(Petrol, Diesel, Electric) cum by year--
;
SELECT year, COUNT(*) FROM car_dekho WHERE fuel= "Petrol" GROUP BY year; 
SELECT year, COUNT(*) FROM car_dekho WHERE fuel= "Diesel" GROUP BY year ;  
SELECT year, COUNT(*) FROM car_dekho WHERE fuel= "Electric" GROUP BY year;

--Q8. Which year had more than 100 cars?--

SELECT year, COUNT(*) FROM car_dekho GROUP BY year HAVING COUNT(*)>100;
  
--Q9. Manager asked all detailsof cars sold between 2015 to 2023--

SELECT*FROM car_dekho WHERE year IN BETWEEN(2015,2023);

--Q9. find number of cars sold of each model whose name starts from M?

SELECT count(*), Name FROM car_dekho WHERE Name LIKE "M%" group by Name

--Q10. Find number of carsof eachmodel that have been driven less than 7000 Km.?

SELECT Name, COUNT(*) From car_dekho WHERE km_driven <7000 GROUP BY Name;