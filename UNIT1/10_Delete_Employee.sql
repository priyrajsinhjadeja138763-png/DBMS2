DECLARE
    Empid EMP.EID%TYPE;
BEGIN
    Empid:=&EID;

    DELETE FROM EMP
    WHERE EID=Empid;

    IF SQL%ROWCOUNT>0 THEN
        COMMIT;
        dbms_output.put_line('Record deleted');
    ELSE
        dbms_output.put_line('ID not found');
    END IF;
END;
/
