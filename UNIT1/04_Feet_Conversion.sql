DECLARE
    feet NUMBER;
    cm NUMBER;
    inch NUMBER;
    meter NUMBER;
BEGIN
    feet:=&feet;

    cm:=feet*30.48;
    inch:=feet*12;
    meter:=feet*0.3048;

    dbms_output.put_line('Centimeter:'||cm);
    dbms_output.put_line('Inch:'||inch);
    dbms_output.put_line('Meter:'||meter);
END;
/
