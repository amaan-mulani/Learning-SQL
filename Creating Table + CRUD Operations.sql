create table employee1 (id int, name varchar(50), post varchar(20), gender varchar(20), salary int, state varchar(20), district varchar(20), age int, email varchar(20));
insert into employee1 value 
    (1, 'Aman', 'Developer', 'Male', 45000, 'Maharashtra', 'Pune', 24, 'aman@example.com'),
    (2, 'Sneha', 'Designer', 'Female', 40000, 'Karnataka', 'Bangalore', 23, 'sneha@example.com'),
    (3, 'Rahul', 'Tester', 'Male', 35000, 'Delhi', 'New Delhi', 25, 'rahul@example.com'),
    (4, 'Priya', 'Manager', 'Female', 60000, 'Tamil Nadu', 'Chennai', 28, 'priya@example.com'),
    (5, 'Karan', 'HR', 'Male', 30000, 'Telangana', 'Hyderabad', 26, 'karan@example.com'),
    (6, 'Neha', 'Analyst', 'Female', 38000, 'West Bengal', 'Kolkata', 22, 'neha@example.com'),
    (7, 'Arjun', 'Intern', 'Male', 20000, 'Rajasthan', 'Jaipur', 21, 'arjun@example.com'),
	(8, 'Meera', 'Consultant', 'Female', 50000, 'Gujarat', 'Ahmedabad', 27, 'meera@example.com'),
    (9, 'Vikram', 'Engineer', 'Male', 42000, 'Punjab', 'Amritsar', 24, 'vikram@example.com');
    
    update employee1 set email="aman@gmail.com" where id=1;
    
    drop table employee1;