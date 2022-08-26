

CREATE TABLE Sales1(
Employee_Name VARCHAR(45) NOT NULL,
Year INT NOT NULL,
Country VARCHAR(45) NOT NULL,
Product VARCHAR(45) NOT NULL,
Sale DECIMAL(12,2) NOT NULL
);


INSERT INTO Sales1(Employee_Name, Year, Country, Product, Sale)
VALUES('Joseph', 2017, 'India', 'Laptop', 10000),
('Joseph', 2018, 'India', 'Laptop', 15000),
('Joseph', 2019, 'India', 'TV', 20000),
('Bob', 2017, 'US', 'Computer', 15000),
('Bob', 2018, 'US', 'Computer', 10000),
('Bob', 2019, 'US', 'TV', 20000),
('Peter', 2017, 'Canada', 'Mobile', 20000),
('Peter', 2018, 'Canada', 'Calculator', 1500),
('Peter', 2019, 'Canada', 'Mobile', 25000);
SELECT * FROM SALES1;
select year, country, product, sum(SALE)
over (partition by year) as Sum_of_product
from sales1;

select year, country, product, sum(SALE) as Sum_of_product
from sales1
group by year
order by year;
select year, country, product, sale,
row_number () over (partition by year order by  year) as rank_of_sales
from sales1
;
-- ROW_NUMBER function is a SQL ranking function that assigns a sequential rank number to each
 new record in a partition.
-- The RANK() function is a window function could be used in SQL to calculate
a rank for each row within a partition of a result set.


select year, country, product, sale,
dense_rank() over (partition by year order by sale) as rank_name
from sales1;


create table cst1
(
id int,
NAME CHAR(100),
AGE int,
ADDRESS char(100),
SALARY INT
);
insert into cst1 values(1,'RAMESH',35,'Ahmedabad',2000);
insert into cst1 values(2,'Khilan',25,'Delhi',1500);
insert into cst1 values(3,'kaushik',23,'Kota',2000);
insert into cst1 values(4,'Chaitali',25,'Mumbai',6500);
insert into cst1 values(5,'Hardik',27,'BHOPAL',8500);
select * from cst1 where id in ( select id from cst1 where salary> 3000);
create table cst2
(
id int,
BRANCH char(100)
);

insert into cst2 values(1,'A');
insert into cst2 values(2,'B');
insert into cst2 values(3,'C');
insert into cst2 values(4,'D');
insert into cst2 values(5,'E');
 select *  from  cst2 where id in(select id from cst1 where salary > 4500);
select repeat("ram",4);
select reverse (name) from cst1;
select id,NAME,AGE,ADDRESS,SALARY,concat_ws("-",NAME,ADDRESS) from cst1;
concat_ws  
select coalesce(null,null,null,'ramji',null,'sivji');
select * from cst1 where name like 'a%';



1) DIFF BTWN CONCAT AND CONCAT_WS

2) which concept replacement for join

3)which query executed first

4) which join is faster,left or inner

5)major difference between drop and truncate

6) which gives all data,group by or partition by

7)how group by is different from partition by

8)which fn is used to populate row?

9) difference between rank and dense rank?