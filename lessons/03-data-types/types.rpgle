**free
ctl-opt main(main) dftactgrp(*no) actgrp(*new);

dcl-proc main;
    // An integer variable that stores a whole number, up to ten digits, initialized to 42
    dcl-s myNumber int(10) inz(42);

    // A decimal variable with up to 10 digits and 2 decimal places, initialized to 3.14
    dcl-s myDecimal packed(10:2) inz(3.14);

    // A zoned decimal with 10 digits and 2 decimal places, initialized to 3.14
    dcl-s myZonedDecimal zoned(10:2) inz(3.14);

    // A string variable up to 50 characters, initialized to 'Hello!'
    dcl-s myString varchar(50) inz('Hello!');

    // Fills the available space in the character string,
    // so trim is needed when displaying it to remove extra spaces
    dcl-s myString2 char(50) inz('Hello, World!');

    
    // A constant string variable up to 50 characters, initialized to 'This is a constant value'
    dcl-c myConstant 'This is a constant value';

    snd-msg 'Total number: ' + %char(myNumber);
    snd-msg 'Decimal number: ' + %char(myDecimal);
    snd-msg 'Zoned decimal number: ' + %char(myZonedDecimal);
    snd-msg 'String variable: ' + myString;
    snd-msg 'String variable with fixed length: ' + %trim(myString2);
    snd-msg 'Constant variable: ' + myConstant;
end-proc;
