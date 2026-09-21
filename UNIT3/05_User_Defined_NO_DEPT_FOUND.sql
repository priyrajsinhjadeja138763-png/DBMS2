DECLARE
    v_deptno EMP.DEPTNO%TYPE:=&DEPTNO;
    NO_DEPT_FOUND EXCEPTION;
    v_count NUMBER:=0;

    CURSOR emp_cur IS
        SELECT *
        FROM EMP
        WHERE Deptno=v_deptno;

    emp_rec EMP%ROWTYPE;
BEGIN
    OPEN emp_cur;

    LOOP
        FETCH emp_cur INTO emp_rec;
        EXIT WHEN emp_cur%NOTFOUND;

        INSERT INTO EMP_BACKUP
        VALUES
        (
            emp_rec.EID,
            emp_rec.EName,
            emp_rec.Deptno,
            emp_rec.Deptname,
            emp_rec.Gender,
            emp_rec.Age,
            emp_rec.BasicSal
        );

        v_count:=v_count+1;
    END LOOP;

    CLOSE emp_cur;

    IF v_count=0 THEN
        RAISE NO_DEPT_FOUND;
    END IF;

    COMMIT;
    dbms_output.put_line(v_count||' records copied');
EXCEPTION
    WHEN NO_DEPT_FOUND THEN
        dbms_output.put_line('NO_DEPT_FOUND');
END;
/
