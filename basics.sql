# create database employee;

create table emploee_details(
	empid varchar(10) primary key,
    empname varchar(20) not null,
    empsalary int, empbith date);
    
insert into emploee_details values
	("Emp1", "vishnu", 5000, "2000-06-02"),
    ("Emp2", "shankar", 10000, "1998-03-14"),
    ("Emp3", "Shree", 50000, "2001-12-22"),
    ("Emp4", "saraswati", 50000, "1997-01-12");
    
select * from emploee_details;

# update row data
update emploee_details set empname="vishnupriyan", empsalary=6000 where empid="Emp1";

select * from emploee_details;

# add a column to a table
alter table emploee_details add age int;

alter table emploee_details add departId varchar(10);

update emploee_details set age = 23  where empid="Emp1";
update emploee_details set age = 25  where empid="Emp2";
update emploee_details set age = 22  where empid="Emp3";
update emploee_details set age = 26  where empid="Emp4";

update emploee_details set departId = 'd1'  where empid="Emp1";
update emploee_details set departId = 'd2'  where empid="Emp2";
update emploee_details set departId = 'd5'  where empid="Emp3";
update emploee_details set departId = 'd4'  where empid="Emp4";

select * from emploee_details;

create table depart(
	departId varchar(10),
    departname varchar(100)
);

insert into depart values
	('d1', 'depart1'),
    ('d2', 'depart2'),
    ('d3', 'depart3'),
    ('d4', 'depart4');
    
# Joins
# Inner Join - returns the common column from the tables.
select e.empid, e.empname, e.empsalary, d.departId, d.departname from emploee_details as e inner join depart as d on e.departId=d.departId;

# outer join
