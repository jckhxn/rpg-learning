set schema JCKHXN1;


-- Create the CUSTOMERS table, you can set the schema on the table name like so.
create or replace table
    JCKHXN1.CUSTOMERS (
        CUSTOMER_NUMBER for CUSNUM decimal(5, 0) not null,
        CUSTOMER_NAME for CUSNAME varchar(50) not null,
        CUSTOMER_BALANCE for CUSBAL decimal(9, 3) not null,
        -- Constraints
        constraint CUSTOMER_PK primary key (CUSNUM)
    );


insert into
        CUSTOMERS
    values
        (1, 'John Doe', 1000.000);