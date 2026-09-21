DECLARE
    n NUMBER;
BEGIN
    n:=TO_NUMBER('&number');

    dbms_output.put_line('Number:'||n);
EXCEPTION
    WHEN INVALID_NUMBER THEN
        dbms_output.put_line('INVALID_NUMBER exception occurred');
END;
/
