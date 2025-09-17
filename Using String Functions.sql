use world;
select * from employee;
ALTER TABLE employee
ADD Email varchar(255);

update employee set Email = 'amaan@gmail.com' where id =1;
		-- Task 1
SELECT UPPER(name) AS name_upper
FROM employee;

		-- Task 2
select lower(designation) as designation_lower
from employee;   

		-- Task 3
select name, length(name) as name_length
from employee;       

		-- task 4
select name, designation, concat(name, designation) as combine_columns
from employee;        

		-- task 5
select substring(name, 1, 4) as first_four_characters
from employee;

		-- Task 6
select right(name, 4) as last_four_characters
from employee;       

select * from employee;
		-- Task 7
select replace(designation, 'Manager','Boss') as changed_post
from employee;     

		-- task 8
select position("@" in email)
from employee;

		-- Task 9
select trim(name) from employee;

		-- Task 10
SELECT name, REVERSE(name) AS reversed_name
FROM employee;        