select * from superstore;

select `Order Id`, `Order Date`, `Ship Date` from superstore;

select distinct Region from superstore;

select distinct count(distinct `Sub-Category`) from superstore;

select `Order Id` as id from superstore;

select * from superstore where Region = 'South';

select * from superstore where Quantity > 5;

select count(*) from superstore where Category='Technology';

select * from superstore where Quantity > 5 And Category='Furniture';

select * from superstore where not Category='Technology';

# OrderBy - to sort in asce/desc
select * from superstore order by `Ship Date` asc; 

select * from superstore where Category = 'Technology' order by Discount desc;

select * from superstore where Region='central' order by sales desc;

select count(*) from superstore where Category is null;

select count(*) from superstore where Category is not null;

select * from superstore where sales is null;

select * from superstore where Region='central' order by sales desc limit 10;

select * from superstore where `Sub-Category` in('paper', 'phones', 'art') and Profit > 50;

select * from superstore where `Sub-Category` not in('paper', 'phones', 'art', 'chairs') and Profit > 50;

select * from superstore where `Order Date` between '06-12-2015' and '12-12-2015';

select * from superstore where `Order Date` between '06-12-2015' and '12-12-2015' and Profit between 500 and 1000;

## Regex or patterns
select * from superstore where Region like 'w%' or Category='%no%';

# aggregate functions
select count(Profit > 100) from superstore where Category='Technology';

select avg(Sales) from superstore where `Sub-Category` like 'C%';

select sum(Profit) from superstore where Region='central';

select min(Quantity) from superstore where Region like '%es%';

select max(Quantity) from superstore where Region like '%es%';  

# Group by
select sum(Sales), Region from superstore group by Region order by Sum(Sales) desc;

# Group by having
select sum(Sales), Region from superstore group by Region having sum(sales) > 400000 order by Sum(Sales) desc;

# subQuery
select min(sales) from superstore;

select * from superstore where sales = (select min(sales) from superstore);

select * from superstore where Sales in (select sales from superstore where sales > 15000 order by Sales desc);

create table orders(
	`Order ID` varchar(30) primary key,
    ordername varchar(30)
);

desc orders;

insert into orders values
	 ('1', 'Gold'),
	 ('2', 'Silver'),
	 ( '3', 'Platinum'),
	 ('4', 'Dimond');
     
update orders set `Order ID` = 'CA-2014-115812' where `Order ID` = '4';

update orders set `Order ID` = 'US-2015-108966' where `Order ID` = '3';
update orders set `Order ID` = 'CA-2016-152156' where `Order ID` = '2';

select * from orders;

select * from superstore where `Order ID` in (select `Order Id` from orders);

