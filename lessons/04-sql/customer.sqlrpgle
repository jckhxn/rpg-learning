**free 
ctl-opt main(main) dftactgrp(*no) actgrp(*new);

dcl-proc main;
    dcl-s CUSNUM zoned(5) inz(1);
    dcl-s CUSNAME varchar(50);

    // Retrieve the customer name and place it in the CUSNAME variable
    // From the customers table where the customer number is equal to CUSNUM
    exec sql
        SELECT CUSTOMER_NAME INTO :CUSNAME
        FROM customers
        WHERE CUSTOMER_NUMBER = :CUSNUM;

    if sqlcode <> 0;
        // Print error to console?
        snd-msg 'Error: ' %target(*self:2);
    else;
        snd-msg 'Customer Name: ' + CUSNAME %target(*self:2);
    endif;
end-proc;