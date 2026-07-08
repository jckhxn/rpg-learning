**free

ctl-opt main(main) actgrp(*new);

dcl-proc main;
    dcl-s contactId int(10) inz(1);
    dcl-s firstName varchar(50);
    dcl-s lastName varchar(50);
    dcl-s phoneNumber varchar(20);
    exec sql
        select FIRST_NAME, LAST_NAME, PHONE_NUMBER
        into :firstName, :lastName, :phoneNumber
        from CONTACTS
        where CONTACT_ID = :contactId;
    if sqlcode <> 0;
        snd-msg 'Contact not found.' %target(*self:2);
    else;
        snd-msg 'Contact: ' + firstName + ' ' + lastName + ' - ' + phoneNumber %target(*self:2);
    endif;
end-proc; 

    
