DECLARE
    pro_name VARCHAR2(50);
    qty NUMBER;
    price NUMBER;
    discount_per NUMBER;
    total_amt NUMBER;
    discount_amt NUMBER;
    net_amt NUMBER;
BEGIN
    pro_name:='&pro_name';
    qty:=&quantity;
    price:=&price;
    discount_per:=&discount_percentage;

    total_amt:=qty*price;
    discount_amt:=(total_amt*discount_per)/100;
    net_amt:=total_amt-discount_amt;

    dbms_output.put_line('Product Name:'||pro_name);
    dbms_output.put_line('Quantity:'||qty);
    dbms_output.put_line('Price:'||price);
    dbms_output.put_line('Total Amount:'||total_amt);
    dbms_output.put_line('Discount:'||discount_amt);
    dbms_output.put_line('Net Amount:'||net_amt);
END;
/
