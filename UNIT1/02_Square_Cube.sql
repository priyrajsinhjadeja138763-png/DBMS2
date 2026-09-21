DECLARE
    n NUMBER;
    square NUMBER;
    cube NUMBER;
BEGIN
    n:=&number;

    square:=n*n;
    cube:=n*n*n;

    dbms_output.put_line('Square:'||square);
    dbms_output.put_line('Cube:'||cube);
END;
/
