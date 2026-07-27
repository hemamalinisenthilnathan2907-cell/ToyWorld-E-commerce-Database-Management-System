CREATE TABLE Customer (
  2      Customer_ID NUMBER PRIMARY KEY,
  3      Name VARCHAR2(30) NOT NULL,
  4      Email VARCHAR2(20) UNIQUE,
  5      Phone VARCHAR2(15) UNIQUE,
  6      Address VARCHAR2(50) NOT NULL
  7  );

Table created.

SQL> INSERT INTO Customer VALUES (101, 'Rahul', 'rahul@gmail.com', '9876543210', 'Chennai');

1 row created.

SQL> INSERT INTO Customer VALUES (102, 'Priya', 'priya@gmail.com', '9876543211', 'Coimbatore');

1 row created.

SQL> INSERT INTO Customer VALUES (103, 'Arun', 'arun@gmail.com', '9876543212', 'Madurai');

1 row created.

SQL> INSERT INTO Customer VALUES (104, 'Divya', 'divya@gmail.com', '9876543213', 'Salem');

1 row created.

SQL> INSERT INTO Customer VALUES (105, 'Karthik', 'karthik@gmail.com', '9876543214', 'Trichy');

1 row created.

SQL> Commit;

Commit complete.

SQL> SELECT * FROM Customer;

CUSTOMER_ID NAME                           EMAIL                PHONE
----------- ------------------------------ -------------------- ---------------
ADDRESS
--------------------------------------------------
        101 Rahul                          rahul@gmail.com      9876543210
Chennai

        102 Priya                          priya@gmail.com      9876543211
Coimbatore

        103 Arun                           arun@gmail.com       9876543212
Madurai


CUSTOMER_ID NAME                           EMAIL                PHONE
----------- ------------------------------ -------------------- ---------------
ADDRESS
--------------------------------------------------
        104 Divya                          divya@gmail.com      9876543213
Salem

        105 Karthik                        karthik@gmail.com    9876543214
Trichy


SQL> SELECT*FROM Customer
  2  WHERE Customer_ID = 103;

CUSTOMER_ID NAME                           EMAIL                PHONE
----------- ------------------------------ -------------------- ---------------
ADDRESS
--------------------------------------------------
        103 Arun                           arun@gmail.com       9876543212
Madurai


SQL> UPDATE Customer
  2  SET Name = 'Rohit'
  3  WHERE Customer_ID = 101;

1 row updated.

SQL> UPDATE Customer
  2  SET Address = 'Bangalore'
  3  WHERE Customer_ID = 103;

1 row updated.

SQL> Commit;

Commit complete.

SQL> DELETE FROM Customer
  2  WHERE Customer_ID = 101;

1 row deleted.

SQL> Commit;

Commit complete.

SQL> SELECT*FROM Customer;

CUSTOMER_ID NAME                           EMAIL                PHONE
----------- ------------------------------ -------------------- ---------------
ADDRESS
--------------------------------------------------
        102 Priya                          priya@gmail.com      9876543211
Coimbatore

        103 Arun                           arun@gmail.com       9876543212
Bangalore

        104 Divya                          divya@gmail.com      9876543213
Salem


CUSTOMER_ID NAME                           EMAIL                PHONE
----------- ------------------------------ -------------------- ---------------
ADDRESS
--------------------------------------------------
        105 Karthik                        karthik@gmail.com    9876543214
Trichy
