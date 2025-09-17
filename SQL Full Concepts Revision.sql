
		--  CORE SQL FOUNDATIONS
        
create database main_practice;
use main_practice;

create table students (id int primary key, name varchar(50), age int, city varchar(50));

insert into students values
(11, 'Amaan Mulani', 24, 'Navi Mumbai'),
(21, 'Sumit Dhamane', 22, 'Kalyan'),
(31, 'Om Jadhav', 21, 'Thane'),
(41, 'Shreyas Iyer', 23, 'Mumbai'),
(51, 'Abdul Khan', 24, 'Thane'),
(61, 'Abhishek  Raha', 21, Null);

update students set age = 24 where id=61;

select * from students;

			-- MODIFYING THE TABLE

alter table students add email varchar(50);
alter table students drop column email;

alter table students add column joining_date DATE;

update students set joining_date ='2025-06-21' where id=11;
update students set joining_date ='2025-10-22' where id=21;
update students set joining_date ='2025-01-14' where id=31;
update students set joining_date ='2023-06-21' where id=41;
update students set joining_date ='2025-01-14' where id=51;
update students set joining_date ='2025-10-22' where id=61;

			-- USING ALIASES

select name as Student_Name, age as Students_age from students;

			-- SORTING: ORDER BY
            
select * from students order by age asc;
select * from students order by name asc;  

			-- WHERE CLAUSE + BOOLEAN LOGIC
            
select * from students;
select * from students where age>21;
select * from students where city in('Thane', 'Navi Mumbai');
select * from students where name like 'A%';

			-- FUNCTIONS
            
select upper(name), length(name), now() from students;

			-- CASE
            
select name, case when age<22 then 'Young' else 'Senior' end as category from students;   

			-- AGGREGATE FUNCTIONS
            
select count(*), avg(age), max(age) from students;

		-- CREATING ANOTHER TABLES FOR JOINS
        
create table courses(course_id int primary key, course_name varchar(50));
insert into courses values 
(1, "C++"),
(2, "React"),
(3, "AI"),
(4, "CSS"),
(5, "Java");
    
alter table students add course_id int;
ALTER TABLE students ADD FOREIGN KEY (course_id) REFERENCES courses(course_id);

update students set course_id = 1 where id=11;
update students set course_id = 3 where id=21;
update students set course_id = 4 where id=31;
update students set course_id = 5 where id=41;
update students set course_id = 1 where id=51;
update students set course_id = null where id=61;

select * from students;
					
			-- JOINS
                    
select * from students s inner join courses c on s.course_id = c.course_id;		-- INNER JOIN

select * from students s left join courses c on s.course_id = c.course_id;		-- LEFT JOIN

select * from courses c right join students s on c.course_id = s.course_id;		-- RIGHT JOIN

select * from courses c inner join students s on c.course_id = s.course_id;		-- INNER JOIN

			-- VIEWS

create view student_courses as select s.name, c.course_name from students s inner join courses c on s.course_id = c.course_id; 
select * from student_courses;    
drop view student_courses;
     
			-- SUB QUERIES
            
select name from students where age=(select max(age) from students) limit 2;  
			
            
            -- TRANSACTIONS AND ACID
 
start transaction;
update students set age = 44 where id=61;
select * from students;
rollback; 
select * from students;
			
            -- INDEXES

create index idx_join_date on students(joining_date);

explain select * from students where joining_date >'2025-06-21';   

select * from idx_joining_date;    
drop index idx_joining_date on students;    


			-- STORED PROCEDURE
            
delimiter //
create procedure studentsbycity(in cityname varchar(50))
begin
select * from students where city= cityname;
end // 
delimiter ;

call studentbycity(''Thane);			