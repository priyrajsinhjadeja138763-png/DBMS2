BEGIN
    FOR rec IN
    (
        SELECT *
        FROM EMP
        WHERE EName LIKE '&name%'
    )
    LOOP
        dbms_output.put_line(
        'EID:'||rec.EID||
        ' Name:'||rec.EName||
        ' Salary:'||rec.BasicSal);
    END LOOP;
END;
/
