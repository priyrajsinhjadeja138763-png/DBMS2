DECLARE
    ename EMP.EName%TYPE;
    sal EMP.BasicSal%TYPE;
BEGIN
    ename:='&EName';

    SELECT BasicSal
    INTO sal
    FROM EMP
    WHERE UPPER(EName)=UPPER(ename);

    dbms_output.put_line('Basic Salary:'||sal);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('Employee not found');
    WHEN TOO_MANY_ROWS THEN
        dbms_output.put_line('More than one employee found');
END;
/
