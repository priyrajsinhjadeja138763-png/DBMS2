DECLARE
    Empid EMP.EID%TYPE;
    bs EMP.BasicSal%TYPE;
    HRA NUMBER(10,2);
    DA NUMBER(10,2);
    Medical NUMBER(10,2):=500;
    PF NUMBER(10,2);
    grosssal NUMBER(10,2);
BEGIN
    Empid:=&EID;

    SELECT BasicSal INTO bs
    FROM EMP
    WHERE EID=Empid;

    HRA:=bs*0.15;
    DA:=bs*0.50;
    PF:=bs*0.10;
    grosssal:=bs+DA+HRA+Medical-PF;

    dbms_output.put_line('Employee ID:'||Empid);
    dbms_output.put_line('Basic Salary:'||bs);
    dbms_output.put_line('Gross Salary:'||grosssal);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('Employee ID not found');
END;
/
