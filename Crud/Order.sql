SQL> CREATE TABLE Orders (
  2      Order_ID NUMBER PRIMARY KEY,
  3      Customer_ID NUMBER,
  4      Order_Date DATE,
  5      Order_Status VARCHAR2(20),
  6      Total_Amount NUMBER(10,2),
  7      CONSTRAINT fk_order_customer
  8      FOREIGN KEY (Customer_ID)
  9      REFERENCES Customer(ID)
 10  );

Table created.

SQL> INSERT INTO Orders VALUES
  2  (1001, 1, TO_DATE('20-09-2026','DD-MM-YYYY'), 'Confirmed', 1200);

1 row created.

SQL>
SQL> INSERT INTO Orders VALUES
  2  (1002, 2, TO_DATE('21-09-2026','DD-MM-YYYY'), 'Shipped', 850);

1 row created.

SQL>
SQL> INSERT INTO Orders VALUES
  2  (1003, 3, TO_DATE('22-09-2026','DD-MM-YYYY'), 'Delivered', 1500);

1 row created.

SQL>
SQL> INSERT INTO Orders VALUES
  2  (1004, 4, TO_DATE('23-09-2026','DD-MM-YYYY'), 'Pending', 650);

1 row created.

SQL>
SQL> INSERT INTO Orders VALUES
  2  (1005, 5, TO_DATE('24-09-2026','DD-MM-YYYY'), 'Confirmed', 950);

1 row created.

SQL>
SQL> INSERT INTO Orders VALUES
  2  (1006, 1, TO_DATE('25-09-2026','DD-MM-YYYY'), 'Shipped', 1100);

1 row created.

SQL>
SQL> INSERT INTO Orders VALUES
  2  (1007, 2, TO_DATE('26-09-2026','DD-MM-YYYY'), 'Delivered', 1300);

1 row created.

SQL>
SQL> INSERT INTO Orders VALUES
  2  (1008, 3, TO_DATE('27-09-2026','DD-MM-YYYY'), 'Confirmed', 2000);

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM Orders;

  ORDER_ID CUSTOMER_ID ORDER_DAT ORDER_STATUS          TOTAL_AMOUNT
---------- ----------- --------- -------------------- ------------
      1001           1 20-SEP-26 Confirmed                    1200
      1002           2 21-SEP-26 Shipped                        850
      1003           3 22-SEP-26 Delivered                     1500
      1004           4 23-SEP-26 Pending                        650
      1005           5 24-SEP-26 Confirmed                      950
      1006           1 25-SEP-26 Shipped                       1100
      1007           2 26-SEP-26 Delivered                     1800
      1008           3 27-SEP-26 Confirmed                      750

8 rows selected.

SQL> UPDATE Orders
  2  SET Total_Amount = 1350
  3  WHERE Order_ID = 1001;

1 row updated.

SQL> UPDATE Orders
  2  SET Order_Date = TO_DATE('28-09-2026','DD-MM-YYYY')
  3  WHERE Order_ID = 1002;

1 row updated.

SQL> SELECT o.Order_ID,
  2         o.Customer_ID,
  3         o.Order_Date,
  4         o.Order_Status,
  5         o.Total_Amount,
  6         oi.Product_ID,
  7         oi.Quantity,
  8         oi.Unit_Price
  9  FROM Orders o
 10  JOIN Order_Item oi
 11  ON o.Order_ID = oi.Order_ID
 12  ORDER BY o.Order_ID;

ORDER_ID CUSTOMER_ID ORDER_DATE  ORDER_STATUS TOTAL_AMOUNT PRODUCT_ID QUANTITY UNIT_PRICE
-------- ----------- ----------- ------------ ------------ ---------- -------- ----------
    1001           1 20-SEP-26   Confirmed         1350.00        101        2     300.00
    1002           2 28-SEP-26   Shipped            850.00        103        4     850.00
    1003           3 22-SEP-26   Delivered         1500.00        104        1    1500.00
    1004           4 23-SEP-26   Pending            650.00        105        1     650.00
    1005           5 24-SEP-26   Confirmed          950.00        108        1     799.00
    1006           1 25-SEP-26   Shipped           1100.00        109        2     550.00
    1007           2 26-SEP-26   Delivered         1800.00        101        3     600.00
    1008           3 27-SEP-26   Confirmed          750.00        103        1     750.00

8 rows selected.

SQL> SELECT Customer_ID,
  2         COUNT(Order_ID) AS Total_Orders,
  3         SUM(Total_Amount) AS Total_Amount
  4  FROM Orders
  5  GROUP BY Customer_ID
  6  ORDER BY Customer_ID;

CUSTOMER_ID TOTAL_ORDERS TOTAL_AMOUNT
----------- ------------ ------------
          1            2      2450.00
          2            2      2650.00
          3            2      2250.00
          4            1       650.00
          5            1       950.00

SQL> COMMIT;

Commit complete.
