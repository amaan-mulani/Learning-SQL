
			-- Loops in stored procedures:
    
delimiter //
create procedure printNumber()
begin
declare i int default 0;
declare output varchar(100);
set output ="";
	lbl:loop
    set i= i+1;
    if i > 15 then leave lbl;
    end if;
    set output = concat(output,"  ",i);
    end loop lbl;
     select output;
end //
delimiter ;
call printNumber();

		-- While Loop.

delimiter //
create procedure addNumber(in num int)
begin
declare i int default 0;
declare total_add int default 0;

 lbl: while i<= num DO
	set total_add = total_add + i;
    set i = i+1;
 end while lbl;
select total_add;
end //
delimiter ;
call addNumber(5);


-- Repeat 

		-- While Loop.

delimiter //
create procedure callSquares(in num int)
begin
	declare i int default 1;
    declare allNumber varchar(255) default "";
    lbl: repeat
		set allNumber = concat (allNumber,i*i,"  ");
        set i=i+1;
        until i > num
    end repeat lbl;
    
    select allNumber as square_number;
    
end //
delimiter ;
call callSquares(5);

-- print even numbers from 1 to 30

delimiter //
create procedure Even()
begin
 declare i int default 1;
 declare output varchar(200) default ' ';
 lbl:while i<30 do
 if i % 2 = 0 then 
	set output = concat(output, i, ' ');
    end if ;
    set i = i+1;
    end while lbl;
    select output as even_numbers;
end //
delimiter ;
call even();

drop procedure even;

-- print reverse numbers from 1 to 10

delimiter //
create procedure rev()
begin
	declare i int default 20;
    declare output varchar(100) default ' ';
    lbl: while i>=1 do
		set output=concat(output, i, ' ');
        set i = i - 1;
        end while lbl;
        select output as rev;
end //
delimiter ;
call rev();        

