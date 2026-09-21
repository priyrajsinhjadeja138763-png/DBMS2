BEGIN
    UPDATE EMP
    SET BasicSal=BasicSal+1000
    WHERE EID=&EID;

    IF SQL%ROWCOUNT>0 THEN
        dbms_output.put_line('Record updated successfully');
        COMMIT;
    ELSE
        dbms_output.put_line('Employee not found');
    END IF;
END;
/
