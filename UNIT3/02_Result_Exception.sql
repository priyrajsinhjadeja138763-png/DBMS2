DECLARE
    sname RESULT.Name%TYPE;
    total RESULT.Total%TYPE;
    per RESULT.Per%TYPE;
    grade RESULT.Grade%TYPE;
BEGIN
    sname:='&Name';

    SELECT Total,Per,Grade
    INTO total,per,grade
    FROM RESULT
    WHERE UPPER(Name)=UPPER(sname);

    dbms_output.put_line('Total:'||total);
    dbms_output.put_line('Percentage:'||per);
    dbms_output.put_line('Grade:'||grade);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('Student not found');
    WHEN TOO_MANY_ROWS THEN
        dbms_output.put_line('More than one student found');
END;
/
