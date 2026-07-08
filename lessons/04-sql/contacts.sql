create table
    JCKHXN1.CONTACTS (
        CONTACT_ID int primary key,
        FIRST_NAME varchar(50),
        LAST_NAME varchar(50),
        EMAIL varchar(100),
        PHONE_NUMBER varchar(20)
    );


insert into
    JCKHXN1.CONTACTS (
        CONTACT_ID,
        FIRST_NAME,
        LAST_NAME,
        EMAIL,
        PHONE_NUMBER
    )
values
    (
        1,
        'John',
        'Doe',
        'john.doe@example.com',
        '123-456-7890'
    );