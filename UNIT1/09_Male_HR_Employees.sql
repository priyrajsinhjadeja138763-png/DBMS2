BEGIN
    FOR rec IN
    (
        SELECT EID,EName,Deptno,Deptname,Gender,Age,BasicSal
        FROM EMP
        WHERE UPPER(Gender)='MALE'
        AND UPPER(Deptname)='HR'
    )
    LOOP
        dbms_output.put_line('Empid:'||rec.EID);
        dbms_output.put_line('Ename:'||rec.EName);
        dbms_output.put_line('Deptno:'||rec.Deptno);
        dbms_output.put_line('Deptname:'||rec.Deptname);
        dbms_output.put_line('Gender:'||rec.Gender);
        dbms_output.put_line('Age:'||rec.Age);
        dbms_output.put_line('Basic Salary:'||rec.BasicSal);
    END LOOP;
END;
/
