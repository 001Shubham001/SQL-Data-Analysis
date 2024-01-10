show tables;
DESC SALES;
SELECT * FROM SALES;
SELECT SaleDate, Amount, Customers FROM SALES;
SELECT SaleDate, Amount, Boxes, weekday(SaleDate) as 'Day of the week'
from sales
where weekday(SaleDate)=4;

Select * from people;

select * from people where team = 'Delish' or team = 'Jucies';
select * from people where Salesperson LIKE 'B%';
select * from people where Salesperson LIKE '%B%';

select SaleDate, Amount ,
		case when Amount < 1000 then 'Under 1k'
             when Amount < 5000 then 'Under 5k'
             when Amount < 10000 then 'Under 10k'
             else '10k or more'
        end  as 'Amount Category'
        from sales;