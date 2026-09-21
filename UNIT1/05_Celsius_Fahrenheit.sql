DECLARE
    celsius NUMBER;
    fahrenheit NUMBER;
BEGIN
    celsius:=&celsius;

    fahrenheit:=(celsius*9/5)+32;

    dbms_output.put_line('Fahrenheit:'||fahrenheit);
END;
/
