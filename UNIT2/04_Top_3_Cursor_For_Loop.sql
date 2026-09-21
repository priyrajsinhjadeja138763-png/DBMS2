DECLARE
    i NUMBER:=0;
BEGIN
    FOR rec IN
    (
        SELECT EName,BasicSal
        FROM EMP
        ORDER BY BasicSal DESC
    )
    LOOP
        i:=i+1;
        EXIT WHEN i>3;

        dbms_output.put_line(
        'Name:'||rec.EName||
        ' Basic Salary:'||rec.BasicSal);
    END LOOP;
END;
/
