use ebola;

DELIMITER $$ 
DROP FUNCTION safeDecimalValue;
CREATE FUNCTION safeDecimalValue(input varchar(20))
RETURNS DECIMAL(15,2)
DETERMINISTIC
BEGIN
DECLARE returnValue DECIMAL(15,2);
CASE
	WHEN input is NULL THEN SET returnValue=0.00;
    WHEN input='' then SET returnValue=0.00;
    ELSE SET returnValue = CONVERT(REPLACE(input,',', '.'), DECIMAL(15,2));
end case;
RETURN (returnValue);
END $$
 
DELIMITER ;