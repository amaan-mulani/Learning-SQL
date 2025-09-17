				-- Age Group Categorization:

delimiter //
create procedure checkGap(in age int)
begin
if age<13 then select "Child";
else if age<19 then select "Teenager";
else if age<60 then select "Adult";
else select "Senior Citizen";
end if;
end if;
end if;
end //
delimiter ;

call checkGap(90);


						-- Switch Case:  Month.

delimiter //
create procedure checkmonth(in m int)
begin
case m
	when 1 then select  "January";
    when 2 then select  "February.";
    when 3 then select  "March";
    when 4 then select  "April";
	when 5 then select  "May";
    when 6 then select  "June";
    when 7 then select  "July";
	when 8 then select  "August";
	when 9 then select  "September";
	when 10 then select  "October";
	when 11 then select  "November";
	when 12 then select  "December";
    else select "Enter a valid Number";
end case;
end //
delimiter ;
call checkMonth(4);


				-- Bill Unit Price using Stored Procedure.
delimiter //
create procedure checkPrice(in unit int)
begin
	if unit <=100 then select unit*5;
    else if unit <=300 then select unit*7;
    else select unit*10;
    end if;
    end if;
end //
delimiter ;
call checkPrice(299);


			-- Check Signal using stored procedures:
    
delimiter //
create procedure checkSignal(in sig varchar(100))
begin
	CASE sig
when "R" then select "STOP";
when "Y" then select "WAIT";
when "G" then select "GO";
else select "Invalid Signal";
end case;
end //
delimiter ;
call checkSignal("R");




