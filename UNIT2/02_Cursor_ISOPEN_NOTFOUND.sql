DECLARE
    CURSOR emp1 IS
        SELECT BasicSal
        FROM EMP
        WHERE Deptno=20
        FOR UPDATE OF BasicSal;

    BasicSal EMP.BasicSal%TYPE;
    total_rows NUMBER:=0;
BEGIN
    OPEN emp1;

    IF emp1%ISOPEN THEN
        dbms_output.put_line('Cursor is open');
    END IF;

    LOOP
        FETCH emp1 INTO BasicSal;
        EXIT WHEN emp1%NOTFOUND;

        UPDATE EMP
        SET BasicSal=BasicSal+(BasicSal*0.05)
        WHERE CURRENT OF emp1;

        total_rows:=emp1%ROWCOUNT;
    END LOOP;

    IF total_rows=0 THEN
        dbms_output.put_line('No employee found in Department 20.');
    ELSE
        dbms_output.put_line(total_rows||
        ' employee salary updated.');
    END IF;

    CLOSE emp1;
    COMMIT;
END;
/
