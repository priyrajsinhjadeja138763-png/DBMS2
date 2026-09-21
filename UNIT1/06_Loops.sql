DECLARE
    n NUMBER;
    i NUMBER;
BEGIN
    n:=&n;

    dbms_output.put_line('Using LOOP');
    i:=1;
    LOOP
        EXIT WHEN i>n;
        dbms_output.put_line(i);
        i:=i+1;
    END LOOP;

    dbms_output.put_line('Using FOR LOOP');
    FOR i IN 1..n LOOP
        dbms_output.put_line(i);
    END LOOP;

    dbms_output.put_line('Using WHILE LOOP');
    i:=1;
    WHILE i<=n LOOP
        dbms_output.put_line(i);
        i:=i+1;
    END LOOP;
END;
/
