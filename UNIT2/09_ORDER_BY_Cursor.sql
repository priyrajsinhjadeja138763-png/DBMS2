DECLARE
    CURSOR emp1 IS
        SELECT EID,EName,BasicSal
        FROM EMP
        ORDER BY BasicSal DESC;

    eid EMP.EID%TYPE;
    ename EMP.EName%TYPE;
    sal EMP.BasicSal%TYPE;
BEGIN
    OPEN emp1;

    LOOP
        FETCH emp1 INTO eid,ename,sal;
        EXIT WHEN emp1%NOTFOUND;

        dbms_output.put_line(
        'EID:'||eid||' Name:'||ename||
        ' Salary:'||sal);
    END LOOP;

    CLOSE emp1;
END;
/
