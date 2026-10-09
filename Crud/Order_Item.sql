SQL> CREATE TABLE Order_Item (
  2      OrderItem_ID NUMBER PRIMARY KEY,
  3      Order_ID NUMBER,
  4      Product_ID NUMBER,
  5      Quantity NUMBER,
  6      Unit_Price NUMBER(10,2),
  7      CONSTRAINT fk_orderitem_order
  8          FOREIGN KEY (Order_ID)
  9          REFERENCES Orders(Order_ID),
 10      CONSTRAINT fk_orderitem_product
 11          FOREIGN KEY (Product_ID)
 12          REFERENCES Product(Product_ID)
 13  );

Table created.

SQL> INSERT INTO Order_Item VALUES
  2  (1, 1001, 101, 2, 300);

1 row created.

SQL> INSERT INTO Order_Item VALUES
  2  (2, 1002, 103, 1, 850);

1 row created.

SQL> INSERT INTO Order_Item VALUES
  2  (3, 1003, 104, 1, 1500);

1 row created.

SQL> INSERT INTO Order_Item VALUES
  2  (4, 1004, 105, 1, 650);

1 row created.

SQL> INSERT INTO Order_Item VALUES
  2  (5, 1005, 108, 1, 950);

1 row created.

SQL> INSERT INTO Order_Item VALUES
  2  (6, 1006, 109, 2, 550);

1 row created.

SQL> INSERT INTO Order_Item VALUES
  2  (7, 1007, 101, 3, 600);

1 row created.

SQL> INSERT INTO Order_Item VALUES
  2  (8, 1008, 103, 1, 750);

1 row created.

SQL> COMMIT;

Commit complete.


SQL> SELECT * FROM Order_Item;

ORDERITEM_ID   ORDER_ID  PRODUCT_ID   QUANTITY  UNIT_PRICE
------------ ---------- ----------- ---------- ----------
           1       1001         101          2        300
           2       1002         103          1        850
           3       1003         104          1       1500
           4       1004         105          1        650
           5       1005         108          1        950
           6       1006         109          2        550
           7       1007         101          3        600
           8       1008         103          1        750

8 rows selected.


SQL> UPDATE Order_Item
  2  SET Quantity = 4
  3  WHERE OrderItem_ID = 2;

1 row updated.


SQL> UPDATE Order_Item
  2  SET Unit_Price = 799.00
  3  WHERE OrderItem_ID = 5;

1 row updated.


SQL> COMMIT;

Commit complete.
