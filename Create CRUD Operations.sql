CREATE TABLE Customer (
  2      Customer_ID NUMBER PRIMARY KEY,
  3      Name VARCHAR2(30) NOT NULL,
  4      Email VARCHAR2(20) UNIQUE,
  5      Phone VARCHAR2(15) UNIQUE,
  6      Address VARCHAR2(50) NOT NULL
  7  );

Table created.

SQL> INSERT INTO Customer VALUES (101, 'Rahul',   'rahul@gmail.com',    '9876543210', 'Chennai');

1 row created.

SQL> 
SQL> INSERT INTO Customer VALUES (102, 'Priya',   'priya@gmail.com',    '9876543211', 'Coimbatore');

1 row created.

SQL> 
SQL> INSERT INTO Customer VALUES (103, 'Arun',    'arun@gmail.com',     '9876543212', 'Madurai');

1 row created.

SQL> 
SQL> INSERT INTO Customer VALUES (104, 'Divya',   'divya@gmail.com',    '9876543213', 'Salem');

1 row created.

SQL> 
SQL> INSERT INTO Customer VALUES (105, 'Karthik', 'karthik@gmail.com',  '9876543214', 'Trichy');

1 row created.

SQL> 
SQL> INSERT INTO Customer VALUES (106, 'Anitha',  'anitha@gmail.com',   '9876543215', 'Erode');

1 row created.

SQL> 
SQL> INSERT INTO Customer VALUES (107, 'Vignesh', 'vignesh@gmail.com',  '9876543216', 'Vellore');

1 row created.

SQL> 
SQL> INSERT INTO Customer VALUES (108, 'Meena',   'meena@gmail.com',    '9876543217', 'Tirunelveli');

1 row created.

SQL> 
SQL> INSERT INTO Customer VALUES (109, 'Suresh',  'suresh@gmail.com',   '9876543218', 'Thanjavur');

1 row created.

SQL> 
SQL> INSERT INTO Customer VALUES (110, 'Nisha',   'nisha@gmail.com',    '9876543219', 'Kanchipuram');

1 row created.

SQL> 
SQL> INSERT INTO Customer VALUES (111, 'Ajay',    'ajay@gmail.com',     '9876543220', 'Namakkal');

1 row created.

SQL> 
SQL> INSERT INTO Customer VALUES (112, 'Keerthi', 'keerthi@gmail.com',  '9876543221', 'Hosur');

1 row created.

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

        106 Anitha                         anitha@gmail.com     9876543215
Erode


CUSTOMER_ID NAME                           EMAIL                PHONE
----------- ------------------------------ -------------------- ---------------
ADDRESS
--------------------------------------------------
        107 Vignesh                        vignesh@gmail.com    9876543216
Vellore

        108 Meena                          meena@gmail.com      9876543217
Tirunelveli

        109 Suresh                         suresh@gmail.com     9876543218
Thanjavur


CUSTOMER_ID NAME                           EMAIL                PHONE
----------- ------------------------------ -------------------- ---------------
ADDRESS
--------------------------------------------------
        110 Nisha                          nisha@gmail.com      9876543219
Kanchipuram

        111 Ajay                           ajay@gmail.com       9876543220
Namakkal

        112 Keerthi                        keerthi@gmail.com    9876543221
Hosur


12 rows selected.

SQL> UPDATE Customer
  2  SET Name = 'Rohan'
  3  WHERE Customer_ID = 101;

1 row updated.

SQL> UPDATE Customer
  2  SET Email = 'anitha123@gmail.com'
  3  WHERE Customer_ID = 106;

1 row updated.

SQL> UPDATE Customer
  2  SET Phone = '9876501234',
  3      Address = 'Tiruppur'
  4  WHERE Customer_ID = 109;

1 row updated.

SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM Customer;

CUSTOMER_ID NAME                           EMAIL                PHONE
----------- ------------------------------ -------------------- ---------------
ADDRESS
--------------------------------------------------
        101 Rohan                          rahul@gmail.com      9876543210
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

        106 Anitha                         anitha123@gmail.com  9876543215
Erode


CUSTOMER_ID NAME                           EMAIL                PHONE
----------- ------------------------------ -------------------- ---------------
ADDRESS
--------------------------------------------------
        107 Vignesh                        vignesh@gmail.com    9876543216
Vellore

        108 Meena                          meena@gmail.com      9876543217
Tirunelveli

        109 Suresh                         suresh@gmail.com     9876501234
Tiruppur


CUSTOMER_ID NAME                           EMAIL                PHONE
----------- ------------------------------ -------------------- ---------------
ADDRESS
--------------------------------------------------
        110 Nisha                          nisha@gmail.com      9876543219
Kanchipuram

        111 Ajay                           ajay@gmail.com       9876543220
Namakkal

        112 Keerthi                        keerthi@gmail.com    9876543221
Hosur


12 rows selected.

SQL> DELETE FROM Customer
  2  WHERE Customer_ID = 102;

1 row deleted.

SQL> DELETE FROM Customer
  2  WHERE Customer_ID = 105;

1 row deleted.

SQL> DELETE FROM Customer
  2  WHERE Customer_ID = 108;

1 row deleted.

SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM Customer;

CUSTOMER_ID NAME                           EMAIL                PHONE
----------- ------------------------------ -------------------- ---------------
ADDRESS
--------------------------------------------------
        101 Rohan                          rahul@gmail.com      9876543210
Chennai

        103 Arun                           arun@gmail.com       9876543212
Madurai

        104 Divya                          divya@gmail.com      9876543213
Salem


CUSTOMER_ID NAME                           EMAIL                PHONE
----------- ------------------------------ -------------------- ---------------
ADDRESS
--------------------------------------------------
        106 Anitha                         anitha123@gmail.com  9876543215
Erode

        107 Vignesh                        vignesh@gmail.com    9876543216
Vellore

        109 Suresh                         suresh@gmail.com     9876501234
Tiruppur


CUSTOMER_ID NAME                           EMAIL                PHONE
----------- ------------------------------ -------------------- ---------------
ADDRESS
--------------------------------------------------
        110 Nisha                          nisha@gmail.com      9876543219
Kanchipuram

        111 Ajay                           ajay@gmail.com       9876543220
Namakkal

        112 Keerthi                        keerthi@gmail.com    9876543221
Hosur


9 rows selected.

SQL> Commit;

Commit complete.