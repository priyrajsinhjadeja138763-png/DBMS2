DECLARE
    CURSOR emp_cur(dno NUMBER) IS
        SELECT EName,Deptno,BasicSal
        FROM EMP
        WHERE Deptno=dno;

    total_salary NUMBER:=0;
BEGIN
    FOR rec IN emp_cur(&Deptno)
    LOOP
        total_salary:=total_salary+rec.BasicSal;

        dbms_output.put_line(
        'Name:'||rec.EName||
        ' Deptno:'||rec.Deptno||
        ' Basic Salary:'||rec.BasicSal);
    END LOOP;

    dbms_output.put_line(
    'Department Total Salary:'||total_salary);
END;
/
