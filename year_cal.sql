--create table Year_cal
--(
--id int,
--year int
--)
--insert into year_cal
--values(1,1776),(2,2001),(3,1643),(4,1866),(5,1969)

--select * from year_cal

select year,
case 
when year >=1500 and year<=1700  then 1
when year >=1701 and year <=1900 then 2
when year >=1901 and year<=2002 then 3

else null
end as century
from year_cal

--where year in(18,21,17,19,20)

