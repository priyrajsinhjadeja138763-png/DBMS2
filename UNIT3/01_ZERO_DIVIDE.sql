DECLARE
    a NUMBER:=10;
    b NUMBER:=0;
    c NUMBER;
BEGIN
    c:=a/b;
    dbms_output.put_line(c);
EXCEPTION
    WHEN ZERO_DIVIDE THEN
        dbms_output.put_line('Cannot divide by zero');
END;
/
