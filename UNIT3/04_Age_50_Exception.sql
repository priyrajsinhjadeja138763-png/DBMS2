DECLARE
    ename EMP.EName%TYPE;
    sal EMP.BasicSal%TYPE;
BEGIN
    SELECT EName,BasicSal
    INTO ename,sal
    FROM EMP
    WHERE Age=50;

    dbms_output.put_line('Name:'||ename);
    dbms_output.put_line('Salary:'||sal);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('No employee whose age is 50');
    WHEN TOO_MANY_ROWS THEN
        dbms_output.put_line('More than one employee whose age is 50');
END;
/
