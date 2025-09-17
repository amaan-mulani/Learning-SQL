-- Salary Increment from table.

select * from employee;
select employee.*,
CASE
when salary>22000 then
	salary*0.2
when salary >10000 and salary<22000 then
	salary*0.1
else
	salary*0.05
end as bonus
from employee;
