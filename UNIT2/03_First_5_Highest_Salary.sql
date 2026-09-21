DECLARE
    CURSOR c1 IS
        SELECT EName,Deptno,BasicSal
        FROM EMP
        ORDER BY BasicSal DESC;

    c1_EName EMP.EName%TYPE;
    c1_Deptno EMP.Deptno%TYPE;
    c1_bs EMP.BasicSal%TYPE;
BEGIN
    OPEN c1;

    LOOP
        FETCH c1 INTO c1_EName,c1_Deptno,c1_bs;

        EXIT WHEN c1%NOTFOUND OR c1%ROWCOUNT>5;

        dbms_output.put_line(
        c1%ROWCOUNT||' Name:'||c1_EName||
        ' Deptno:'||c1_Deptno||
        ' Salary:'||c1_bs);
    END LOOP;

    CLOSE c1;
END;
/
