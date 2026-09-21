BEGIN
    UPDATE EMP
    SET BasicSal=BasicSal+(BasicSal*0.10)
    WHERE Deptno=10;

    IF SQL%ROWCOUNT>0 THEN
        dbms_output.put_line(SQL%ROWCOUNT||
        ' employee salary updated successfully.');
    ELSE
        dbms_output.put_line('No employee found in Department 10.');
    END IF;

    COMMIT;
END;
/
