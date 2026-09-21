DECLARE
    CURSOR cus1 IS
        SELECT *
        FROM CUSTOMER;

    cus_rec CUSTOMER%ROWTYPE;
BEGIN
    OPEN cus1;

    LOOP
        FETCH cus1 INTO cus_rec;
        EXIT WHEN cus1%NOTFOUND;

        dbms_output.put_line('ID:'||cus_rec.ID);
        dbms_output.put_line('Name:'||cus_rec.NAME);
        dbms_output.put_line('Contact:'||cus_rec.CONTACT);
    END LOOP;

    CLOSE cus1;
END;
/
