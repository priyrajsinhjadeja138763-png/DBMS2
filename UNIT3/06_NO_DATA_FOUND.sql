DECLARE
    ename EMP.EName%TYPE;
BEGIN
    SELECT EName
    INTO ename
    FROM EMP
    WHERE EID=&EID;

    dbms_output.put_line('Employee Name:'||ename);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('NO_DATA_FOUND exception occurred');
END;
/
