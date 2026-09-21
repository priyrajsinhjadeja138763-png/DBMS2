DECLARE
    a NUMBER:=10;
    b NUMBER:=0;
    c NUMBER;
BEGIN
    c:=a/b;
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('SQLCODE:'||SQLCODE);
        dbms_output.put_line('SQLERRM:'||SQLERRM);
END;
/
