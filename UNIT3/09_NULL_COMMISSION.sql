DECLARE
    v_empno EMP.EID%TYPE:=&EID;
    v_comm NUMBER;
    NULL_COMMISSION EXCEPTION;
BEGIN
    SELECT COMM
    INTO v_comm
    FROM EMP
    WHERE EID=v_empno;

    IF v_comm IS NULL THEN
        RAISE NULL_COMMISSION;
    END IF;

    dbms_output.put_line('Commission:'||v_comm);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('Employee not found');
    WHEN NULL_COMMISSION THEN
        dbms_output.put_line('Commission is NULL');
END;
/
