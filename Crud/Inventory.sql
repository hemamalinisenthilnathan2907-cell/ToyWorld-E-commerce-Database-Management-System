SQL> CREATE TABLE Inventory (
  2      Inventory_ID NUMBER(5) PRIMARY KEY,
  3      Product_ID NUMBER(5),
  4      Seller_ID NUMBER(5),
  5      Stock_Quantity NUMBER(5) DEFAULT 0,
  6      Stock_Status VARCHAR2(20) DEFAULT 'Available',
  7      Last_Updated DATE NOT NULL,
  8      CONSTRAINT fk_inventory_product
  9          FOREIGN KEY (Product_ID)
 10          REFERENCES Product(Product_ID),
 11      CONSTRAINT fk_inventory_seller
 12          FOREIGN KEY (Seller_ID)
 13          REFERENCES Seller(Seller_ID)
 14  );

Table created.


SQL> INSERT INTO Inventory VALUES
  2  (301, 101, 101, 25, 'Available', SYSDATE);

1 row created.


SQL> INSERT INTO Inventory VALUES
  2  (302, 103, 102, 15, 'Available', SYSDATE);

1 row created.


SQL> INSERT INTO Inventory VALUES
  2  (303, 104, 103, 18, 'Available', SYSDATE);

1 row created.


SQL> INSERT INTO Inventory VALUES
  2  (304, 105, 104, 0, 'Out of Stock', SYSDATE);

1 row created.


SQL> INSERT INTO Inventory VALUES
  2  (305, 108, 105, 28, 'Available', SYSDATE);

1 row created.


SQL> INSERT INTO Inventory VALUES
  2  (306, 109, 101, 0, 'Out of Stock', SYSDATE);

1 row created.


SQL> SELECT * FROM Inventory;

INVENTORY_ID PRODUCT_ID SELLER_ID STOCK_QUANTITY STOCK_STATUS
------------ ---------- --------- -------------- -------------
         301        101       101             25 Available
         302        103       102             15 Available
         303        104       103             18 Available
         304        105       104              0 Out of Stock
         305        108       105             28 Available
         306        109       101              0 Out of Stock

6 rows selected.

SQL> COMMIT;

Commit complete.


SQL> SELECT
  2      p.Product_ID,
  3      p.Product_Name,
  4      i.Stock_Quantity,
  5      i.Stock_Status
  6  FROM Product p
  7  JOIN Inventory i
  8  ON p.Product_ID = i.Product_ID
  9  WHERE i.Stock_Status = 'Available';

PRODUCT_ID PRODUCT_NAME          STOCK_QUANTITY STOCK_STATUS
---------- --------------------- -------------- ------------
       101 ABC Learning Kit                   25 Available
       103 Remote Car                         15 Available
       104 Chess Board                        18 Available
       108 Jigsaw Puzzle                      28 Available

4 rows selected.

SQL> COMMIT;

Commit complete.


SQL> SELECT
  2      p.Product_ID,
  3      p.Product_Name,
  4      i.Stock_Quantity,
  5      i.Stock_Status
  6  FROM Product p
  7  JOIN Inventory i
  8  ON p.Product_ID = i.Product_ID
  9  WHERE i.Stock_Status = 'Out of Stock'
 10     OR i.Stock_Quantity = 0;

PRODUCT_ID PRODUCT_NAME       STOCK_QUANTITY STOCK_STATUS
---------- ------------------ -------------- -------------
       105 Football                        0 Out of Stock
       109 Superhero Figure                0 Out of Stock

2 rows selected.

SQL> COMMIT;

Commit complete.


SQL> UPDATE Inventory
  2  SET Stock_Quantity = 20,
  3      Stock_Status = 'Available',
  4      Last_Updated = SYSDATE
  5  WHERE Inventory_ID = 304;

1 row updated.

SQL> COMMIT;

Commit complete.


SQL> SELECT * FROM Inventory;

INVENTORY_ID PRODUCT_ID SELLER_ID STOCK_QUANTITY STOCK_STATUS
------------ ---------- --------- -------------- -------------
         301        101       101             25 Available
         302        103       102             15 Available
         303        104       103             18 Available
         304        105       104             20 Available
         305        108       105             28 Available
         306        109       101              0 Out of Stock

6 rows selected.

SQL> COMMIT;

Commit complete.


SQL> SELECT
  2      i.Inventory_ID,
  3      p.Product_Name,
  4      s.Seller_Name,
  5      i.Stock_Quantity,
  6      i.Stock_Status,
  7      i.Last_Updated
  8  FROM Inventory i
  9  JOIN Product p
 10  ON i.Product_ID = p.Product_ID
 11  JOIN Seller s
 12  ON i.Seller_ID = s.Seller_ID;

INVENTORY_ID PRODUCT_NAME       SELLER_NAME    STOCK_QUANTITY STOCK_STATUS
------------ ------------------ -------------- -------------- -------------
         301 ABC Learning Kit   Happy Toys                  25 Available
         302 Remote Car         Kids World                  15 Available
         303 Chess Board        Fun Zone Toys               18 Available
         304 Football           Little Stars                 20 Available
         305 Jigsaw Puzzle      Toy Planet                  28 Available
         306 Superhero Figure   Happy Toys                   0 Out of Stock

6 rows selected.

SQL> COMMIT;

Commit complete.


SQL> SELECT
  2      p.Product_ID,
  3      p.Product_Name,
  4      i.Stock_Quantity
  5  FROM Product p
  6  JOIN Inventory i
  7  ON p.Product_ID = i.Product_ID
  8  WHERE i.Stock_Quantity = 0;

PRODUCT_ID PRODUCT_NAME       STOCK_QUANTITY
---------- ------------------ --------------
       109 Superhero Figure                0

1 row selected.

SQL> COMMIT;

Commit complete.


SQL> SELECT
  2      Stock_Status,
  3      COUNT(*) AS Product_Count
  4  FROM Inventory
  5  GROUP BY Stock_Status;

STOCK_STATUS     PRODUCT_COUNT
---------------- -------------
Available                    5
Out of Stock                 1

2 rows selected.

SQL> COMMIT;

Commit complete.
