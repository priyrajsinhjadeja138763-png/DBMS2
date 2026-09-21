CREATE TABLE RESULT
(
    Rollno NUMBER(5) PRIMARY KEY,
    Name VARCHAR2(50),
    Sub1 NUMBER(3),
    Sub2 NUMBER(3),
    Sub3 NUMBER(3),
    Sub4 NUMBER(3),
    Sub5 NUMBER(3),
    Total NUMBER(4),
    Per NUMBER(5,2),
    Grade CHAR(1)
);

DECLARE
    rno RESULT.Rollno%TYPE;
    s1 RESULT.Sub1%TYPE;
    s2 RESULT.Sub2%TYPE;
    s3 RESULT.Sub3%TYPE;
    s4 RESULT.Sub4%TYPE;
    s5 RESULT.Sub5%TYPE;
    total NUMBER;
    per NUMBER(5,2);
    grade CHAR(1);
BEGIN
    rno:=&Rollno;

    SELECT Sub1,Sub2,Sub3,Sub4,Sub5
    INTO s1,s2,s3,s4,s5
    FROM RESULT
    WHERE Rollno=rno;

    total:=s1+s2+s3+s4+s5;
    per:=total/5;

    IF per>=80 THEN
        grade:='A';
    ELSIF per>=60 THEN
        grade:='B';
    ELSIF per>=50 THEN
        grade:='C';
    ELSIF per>=35 THEN
        grade:='D';
    ELSE
        grade:='F';
    END IF;

    UPDATE RESULT
    SET Total=total, Per=per, Grade=grade
    WHERE Rollno=rno;

    COMMIT;

    dbms_output.put_line('Roll No:'||rno);
    dbms_output.put_line('Total:'||total);
    dbms_output.put_line('Percentage:'||per);
    dbms_output.put_line('Grade:'||grade);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('Roll Number not found');
END;
/
