use cars;
-- READ -- 
select * from car_dekho;
-- Show all the data by given years --
select count(*) from car_dekho;

-- How many cars available in following years --
select count(*) from car_dekho where year = 2023;
select count(*) from car_dekho where year = 2020;
select count(*) from car_dekho where year = 2021;

-- How many cars available in these years 2020,2021,2022 --
select count(*) from car_dekho where year in (2020,2021,2022) group by year;

-- Show only total no. of cars by years --
select year,count(*) from car_dekho group by year;

-- Show only diesel cars available in year 2020 --
select count(*) from car_dekho where year = 2020 and fuel = 'Diesel';

-- Show only petrol cars available in year 2020 --
select count(*) from car_dekho where year = 2020 and fuel = 'Petrol';

-- All fuel cars by years
select year,count(*) from car_dekho where fuel = 'Petrol' group by year;
select year,count(*) from car_dekho where fuel = 'Diesel' group by year;
select year,count(*) from car_dekho where fuel = 'CNG' group by year;

-- Which year had more than 100 cars --
select year,count(*) from car_dekho group by year having count(*)>100;

-- Which year had less than 50 cars --
select year,count(*) from car_dekho group by year having count(*)<50;

-- All the cars count details between 2015 and 2023 --
select count(*) from car_dekho where year between 2015 and 2023;

-- Show complete list from 2015 to 2023 -- 
select * from car_dekho where year between 2015 and 2023;

-- END --

