select * from sales;

select * from people;

select s.Amount,s.SaleDate, p.Salesperson , p.SPID, s.SPID
from sales s
join people p on p.SPID = s.SPID;

select s.SaleDate, s.Amount, pr.product
from sales s
left join products pr on pr.PID = s.PID;

#product name and person name using join 

select s.SaleDate,s.Amount,p.salesperson, pr.Product, p.team
from sales s
join people p on p.spid = s.spid
join products pr on pr.PID = s.PID
where s.Amount < 500
and p.Team = 'Delish';

select s.SaleDate,s.Amount,p.salesperson, pr.Product, p.team,g.Geo
from sales s
join people p on p.spid = s.spid
join products pr on pr.PID = s.PID
join geo g on g.GeoID = s.GeoID
where s.Amount < 500
and p.Team = ''
and g.geo in ('New Zealand','India')
order by SaleDate;