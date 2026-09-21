DECLARE
    a NUMBER:=&a;
    b NUMBER:=&b;
    c NUMBER;
BEGIN
    c:=a/b;

    dbms_output.put_line('Result:'||c);
EXCEPTION
    WHEN ZERO_DIVIDE THEN
        dbms_output.put_line('ZERO_DIVIDE exception occurred');
END;
/
