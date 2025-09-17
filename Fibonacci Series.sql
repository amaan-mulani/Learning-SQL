DELIMITER //

CREATE PROCEDURE fib(IN n INT)
BEGIN
    DECLARE a INT DEFAULT 0;
    DECLARE b INT DEFAULT 1;
    DECLARE c INT;
    DECLARE i INT DEFAULT 2;

    DROP TEMPORARY TABLE IF EXISTS fibb;
    CREATE TEMPORARY TABLE fibb(num INT);

    IF n >= 1 THEN
        INSERT INTO fibb VALUES (a);
    END IF;

    IF n >= 2 THEN
        INSERT INTO fibb VALUES (b);
    END IF;

    WHILE i < n DO
        SET c = a + b;
        INSERT INTO fibb VALUES (c);
        SET a = b;
        SET b = c;
        SET i = i + 1;
    END WHILE;

    SELECT * FROM fibb;
END //

DELIMITER ;

drop procedure fib;
call fib(20);