-- This SQL script creates a function SafeDiv that divides the first number by the second and returns 0 if the second number is 0
DELIMITER $$ ;
CREATE FUNCTION SafeDiv(
	a INT,
	b INT
)
RETURNS FLOAT
DETERMINISTIC
BEGIN
	DECLARE result FLOAT;
	IF b = 0 THEN
		RETURN 0;
    END IF;
    SET result = (a * 1.0) / b;
    RETURN result;
END;$$
DELIMITER ;
