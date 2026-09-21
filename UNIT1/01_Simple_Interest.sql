DECLARE
    p NUMBER;
    r NUMBER;
    n NUMBER;
    si NUMBER;
BEGIN
    p:=&principal;
    r:=&rate;
    n:=&years;

    si:=(p*r*n)/100;

    dbms_output.put_line('Simple Interest:'||si);
END;
/
