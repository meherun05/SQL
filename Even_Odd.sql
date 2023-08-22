--create table even_odd 
--(
--id int,
--Value int
--)

--insert into even_odd
--values(1,25),(2,50),(3,55),(4,21),(5,10)

select value,
case
when value%2=0 then'even'
else 'odd'
end as even_odd_number

from even_odd