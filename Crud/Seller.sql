SQL> CREATE TABLE Seller (
  2      Seller_ID NUMBER(5) PRIMARY KEY,
  3      Seller_Name VARCHAR2(50) NOT NULL,
  4      Contact_Number VARCHAR2(15),
  5      Email VARCHAR2(50),
  6      Address VARCHAR2(100)
  7  );

Table created.

SQL> INSERT INTO Seller VALUES
  2  (101, 'Happy Toys', '9876543210', 'happytoys@gmail.com', 'Chennai');

1 row created.

SQL> INSERT INTO Seller VALUES
  2  (102, 'Kids World', '9876501234', 'kidsworld@gmail.com', 'Coimbatore');

1 row created.

SQL> INSERT INTO Seller VALUES
  2  (103, 'Fun Zone Toys', '9876512345', 'funzone@gmail.com', 'Madurai');

1 row created.

SQL> INSERT INTO Seller VALUES
  2  (104, 'Little Stars', '9876523456', 'littlestars@gmail.com', 'Salem');

1 row created.

SQL> INSERT INTO Seller VALUES
  2  (105, 'Toy Planet', '9876534567', 'toyplanet@gmail.com', 'Trichy');

1 row created.

SQL> SELECT * FROM Seller;

 SELLER_ID SELLER_NAME          CONTACT_NUMBER EMAIL
---------- -------------------- -------------- -------------------------
ADDRESS
--------------------------------------------------
       101 Happy Toys           9876543210     happytoys@gmail.com
Chennai

       102 Kids World           9876501234     kidsworld@gmail.com
Coimbatore

       103 Fun Zone Toys        9876512345     funzone@gmail.com
Madurai

       104 Little Stars         9876523456     littlestars@gmail.com
Salem

       105 Toy Planet           9876534567     toyplanet@gmail.com
Trichy

5 rows selected.

SQL> COMMIT;

Commit complete.

SQL> SELECT
  2      s.Seller_Name,
  3      i.Product_ID,
  4      i.Stock_Quantity,
  5      i.Stock_Status,
  6      i.Last_Updated
  7  FROM Seller s
  8  JOIN Inventory i
  9  ON s.Seller_ID = i.Seller_ID;

SELLER_NAME          PRODUCT_ID STOCK_QUANTITY STOCK_STATUS    LAST_UPDA
-------------------- ---------- -------------- --------------- ---------
Happy Toys                  101             25 Available       17-SEP-26
Kids World                  103             15 Available       17-SEP-26
Fun Zone Toys               104             18 Available       17-SEP-26
Little Stars                105              0 Out of Stock   17-SEP-26
Toy Planet                  108             28 Available       17-SEP-26
Happy Toys                  109              0 Out of Stock   17-SEP-26

6 rows selected.

SQL> COMMIT;

Commit complete.

SQL> SELECT
  2      s.Seller_Name,
  3      SUM(i.Stock_Quantity) AS Total_Stock
  4  FROM Seller s
  5  JOIN Inventory i
  6  ON s.Seller_ID = i.Seller_ID
  7  GROUP BY s.Seller_Name;

SELLER_NAME          TOTAL_STOCK
-------------------- -----------
Happy Toys                    25
Kids World                    15
Fun Zone Toys                 18
Little Stars                   0
Toy Planet                    28

5 rows selected.

SQL> COMMIT;

Commit complete.
