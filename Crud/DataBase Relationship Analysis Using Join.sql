SQL> SELECT
  2      C.ID,
  3      C.NAME,
  4      O.ORDER_ID,
  5      O.ORDER_DATE,
  6      O.ORDER_STATUS,
  7      O.TOTAL_AMOUNT
  8  FROM CUSTOMER C
  9  INNER JOIN ORDERS O
 10  ON C.ID = O.CUSTOMER_ID;

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
         1 Ramesh                               1001 20-SEP-26
Confirmed                    1350

         2 Khilan                               1002 28-SEP-26
Shipped                       850

         3 kaushik                              1003 22-SEP-26
Delivered                    1500


        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
         4 Chaitali                             1004 23-SEP-26
Pending                       650

         5 Hardik                               1005 24-SEP-26
Confirmed                     950

         1 Ramesh                               1006 25-SEP-26
Shipped                      1100


        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
         2 Khilan                               1007 26-SEP-26
Delivered                    1800

         3 kaushik                              1008 27-SEP-26
Confirmed                     750


8 rows selected.


SQL> SELECT
  2      O.ORDER_ID,
  3      O.CUSTOMER_ID,
  4      O.ORDER_DATE,
  5      O.TOTAL_AMOUNT,
  6      P.PAYMENT_ID,
  7      P.PAYMENT_METHOD,
  8      P.PAYMENT_STATUS
  9  FROM ORDERS O
 10  INNER JOIN PAYMENT P
 11  ON O.ORDER_ID = P.ORDER_ID;

  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_ID
---------- ----------- --------- ------------ ----------
PAYMENT_METHOD
--------------------------------------------------
PAYMENT_STATUS
------------------------------
      1001           1 20-SEP-26         1350          1
UPI
Successful

      1002           2 28-SEP-26          850          2
Credit Card
Successful

  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_ID
---------- ----------- --------- ------------ ----------
PAYMENT_METHOD
--------------------------------------------------
PAYMENT_STATUS
------------------------------

      1003           3 22-SEP-26         1500          3
Debit Card
Failed

      1004           4 23-SEP-26          650          4
Cash on Delivery

  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_ID
---------- ----------- --------- ------------ ----------
PAYMENT_METHOD
--------------------------------------------------
PAYMENT_STATUS
------------------------------
Successful

      1005           5 24-SEP-26          950          5
UPI
Successful

      1006           1 25-SEP-26         1100          6

  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_ID
---------- ----------- --------- ------------ ----------
PAYMENT_METHOD
--------------------------------------------------
PAYMENT_STATUS
------------------------------
Credit Card
Failed

      1007           2 26-SEP-26         1800          7
Debit Card
Successful


  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_ID
---------- ----------- --------- ------------ ----------
PAYMENT_METHOD
--------------------------------------------------
PAYMENT_STATUS
------------------------------
      1008           3 27-SEP-26          750          8
UPI
Successful


8 rows selected.


SQL> SELECT
  2      P.PRODUCT_ID,
  3      P.PRODUCT_NAME,
  4      OI.ORDER_ID,
  5      OI.QUANTITY,
  6      OI.UNIT_PRICE
  7  FROM PRODUCT P
  8  INNER JOIN ORDER_ITEM OI
  9  ON P.PRODUCT_ID = OI.PRODUCT_ID;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  ORDER_ID   QUANTITY UNIT_PRICE
---------- ---------- ----------
       101
ABC Learning Kit
      1001          2        300

       103
Remote Car
      1002          4        850

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  ORDER_ID   QUANTITY UNIT_PRICE
---------- ---------- ----------

       104
Chess Board
      1003          1       1500

       105
Football

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  ORDER_ID   QUANTITY UNIT_PRICE
---------- ---------- ----------
      1004          1        650

       109
Superhero Figure
      1006          2        550

       101

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  ORDER_ID   QUANTITY UNIT_PRICE
---------- ---------- ----------
ABC Learning Kit
      1007          3        600

       103
Remote Car
      1008          1        750


7 rows selected.


SQL> SELECT
  2      C.ID,
  3      C.NAME,
  4      O.ORDER_ID,
  5      O.ORDER_DATE,
  6      O.ORDER_STATUS,
  7      O.TOTAL_AMOUNT
  8  FROM CUSTOMER C
  9  LEFT JOIN ORDERS O
 10  ON C.ID = O.CUSTOMER_ID;

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
         1 Ramesh                               1001 20-SEP-26
Confirmed                    1350

         2 Khilan                               1002 28-SEP-26
Shipped                       850

         3 kaushik                              1003 22-SEP-26
Delivered                    1500


        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
         4 Chaitali                             1004 23-SEP-26
Pending                       650

         5 Hardik                               1005 24-SEP-26
Confirmed                     950

         1 Ramesh                               1006 25-SEP-26
Shipped                      1100


        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
         2 Khilan                               1007 26-SEP-26
Delivered                    1800

         3 kaushik                              1008 27-SEP-26
Confirmed                     750


8 rows selected.


SQL> SELECT
  2      C.ID,
  3      C.NAME,
  4      O.ORDER_ID,
  5      O.ORDER_DATE,
  6      O.ORDER_STATUS,
  7      O.TOTAL_AMOUNT
  8  FROM CUSTOMER C
  9  RIGHT JOIN ORDERS O
 10  ON C.ID = O.CUSTOMER_ID;

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
         1 Ramesh                               1001 20-SEP-26
Confirmed                    1350

         1 Ramesh                               1006 25-SEP-26
Shipped                      1100

         2 Khilan                               1002 28-SEP-26
Shipped                       850


        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
         2 Khilan                               1007 26-SEP-26
Delivered                    1800

         3 kaushik                              1003 22-SEP-26
Delivered                    1500

         3 kaushik                              1008 27-SEP-26
Confirmed                     750


        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
         4 Chaitali                             1004 23-SEP-26
Pending                       650

         5 Hardik                               1005 24-SEP-26
Confirmed                     950


8 rows selected.


SQL> SELECT
  2      C.ID,
  3      C.NAME,
  4      O.ORDER_ID,
  5      O.ORDER_DATE,
  6      O.ORDER_STATUS,
  7      P.PRODUCT_NAME,
  8      OI.QUANTITY,
  9      OI.UNIT_PRICE,
 10      O.TOTAL_AMOUNT
 11  FROM CUSTOMER C
 12  JOIN ORDERS O
 13  ON C.ID = O.CUSTOMER_ID
 14  JOIN ORDER_ITEM OI
 15  ON O.ORDER_ID = OI.ORDER_ID
 16  JOIN PRODUCT P
 17  ON OI.PRODUCT_ID = P.PRODUCT_ID;

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS
--------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT
---------- ---------- ------------
         1 Ramesh                               1001 20-SEP-26
Confirmed
ABC Learning Kit
         2        300         1350


        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS
--------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT
---------- ---------- ------------
         2 Khilan                               1007 26-SEP-26
Delivered
ABC Learning Kit
         3        600         1800


        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS
--------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT
---------- ---------- ------------
         2 Khilan                               1002 28-SEP-26
Shipped
Remote Car
         4        850          850


        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS
--------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT
---------- ---------- ------------
         3 kaushik                              1008 27-SEP-26
Confirmed
Remote Car
         1        750          750


        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS
--------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT
---------- ---------- ------------
         3 kaushik                              1003 22-SEP-26
Delivered
Chess Board
         1       1500         1500


        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS
--------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT
---------- ---------- ------------
         4 Chaitali                             1004 23-SEP-26
Pending
Football
         1        650          650


        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS
--------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT
---------- ---------- ------------
         1 Ramesh                               1006 25-SEP-26
Shipped
Superhero Figure
         2        550         1100


7 rows selected.


SQL> SELECT
  2      C.ID,
  3      C.NAME,
  4      COUNT(O.ORDER_ID) AS TOTAL_ORDERS,
  5      SUM(O.TOTAL_AMOUNT) AS TOTAL_PURCHASE
  6  FROM CUSTOMER C
  7  JOIN ORDERS O
  8  ON C.ID = O.CUSTOMER_ID
  9  GROUP BY C.ID, C.NAME;

        ID NAME                           TOTAL_ORDERS TOTAL_PURCHASE
---------- ------------------------------ ------------ --------------
         1 Ramesh                                    2           2450
         2 Khilan                                    2           2650
         3 kaushik                                   2           2250
         4 Chaitali                                  1            650
         5 Hardik                                    1            950


SQL> SELECT
  2      C.ID,
  3      C.NAME,
  4      O.ORDER_ID,
  5      O.ORDER_DATE,
  6      P.PRODUCT_NAME,
  7      OI.QUANTITY,
  8      OI.UNIT_PRICE,
  9      O.TOTAL_AMOUNT,
 10      PY.*
 11  FROM CUSTOMER C
 12  INNER JOIN ORDERS O
 13      ON C.ID = O.CUSTOMER_ID
 14  INNER JOIN ORDER_ITEM OI
 15      ON O.ORDER_ID = OI.ORDER_ID
 16  INNER JOIN PRODUCT P
 17      ON OI.PRODUCT_ID = P.PRODUCT_ID
 18  INNER JOIN PAYMENT PY
 19      ON O.ORDER_ID = PY.ORDER_ID
 20  ORDER BY C.ID;

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_ID   ORDER_ID
---------- ---------- ------------ ---------- ----------
PAYMENT_METHOD
--------------------------------------------------
PAYMENT_STATUS                 PAYMENT_D     AMOUNT
------------------------------ --------- ----------
         1 Ramesh                               1001 20-SEP-26
ABC Learning Kit
         2        300         1350          1       1001

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_ID   ORDER_ID
---------- ---------- ------------ ---------- ----------
PAYMENT_METHOD
--------------------------------------------------
PAYMENT_STATUS                 PAYMENT_D     AMOUNT
------------------------------ --------- ----------
UPI
Successful                     01-SEP-26        599


        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_ID   ORDER_ID
---------- ---------- ------------ ---------- ----------
PAYMENT_METHOD
--------------------------------------------------
PAYMENT_STATUS                 PAYMENT_D     AMOUNT
------------------------------ --------- ----------
         1 Ramesh                               1006 25-SEP-26
Superhero Figure
         2        550         1100          6       1006

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_ID   ORDER_ID
---------- ---------- ------------ ---------- ----------
PAYMENT_METHOD
--------------------------------------------------
PAYMENT_STATUS                 PAYMENT_D     AMOUNT
------------------------------ --------- ----------
Credit Card
Failed                         06-SEP-26        650


        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_ID   ORDER_ID
---------- ---------- ------------ ---------- ----------
PAYMENT_METHOD
--------------------------------------------------
PAYMENT_STATUS                 PAYMENT_D     AMOUNT
------------------------------ --------- ----------
         2 Khilan                               1002 28-SEP-26
Remote Car
         4        850          850          2       1002

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_ID   ORDER_ID
---------- ---------- ------------ ---------- ----------
PAYMENT_METHOD
--------------------------------------------------
PAYMENT_STATUS                 PAYMENT_D     AMOUNT
------------------------------ --------- ----------
Credit Card
Successful                     02-SEP-26        899


        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_ID   ORDER_ID
---------- ---------- ------------ ---------- ----------
PAYMENT_METHOD
--------------------------------------------------
PAYMENT_STATUS                 PAYMENT_D     AMOUNT
------------------------------ --------- ----------
         2 Khilan                               1007 26-SEP-26
ABC Learning Kit
         3        600         1800          7       1007

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_ID   ORDER_ID
---------- ---------- ------------ ---------- ----------
PAYMENT_METHOD
--------------------------------------------------
PAYMENT_STATUS                 PAYMENT_D     AMOUNT
------------------------------ --------- ----------
Debit Card
Successful                     07-SEP-26        999


        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_ID   ORDER_ID
---------- ---------- ------------ ---------- ----------
PAYMENT_METHOD
--------------------------------------------------
PAYMENT_STATUS                 PAYMENT_D     AMOUNT
------------------------------ --------- ----------
         3 kaushik                              1003 22-SEP-26
Chess Board
         1       1500         1500          3       1003

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_ID   ORDER_ID
---------- ---------- ------------ ---------- ----------
PAYMENT_METHOD
--------------------------------------------------
PAYMENT_STATUS                 PAYMENT_D     AMOUNT
------------------------------ --------- ----------
Debit Card
Failed                         03-SEP-26        450


        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_ID   ORDER_ID
---------- ---------- ------------ ---------- ----------
PAYMENT_METHOD
--------------------------------------------------
PAYMENT_STATUS                 PAYMENT_D     AMOUNT
------------------------------ --------- ----------
         3 kaushik                              1008 27-SEP-26
Remote Car
         1        750          750          8       1008

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_ID   ORDER_ID
---------- ---------- ------------ ---------- ----------
PAYMENT_METHOD
--------------------------------------------------
PAYMENT_STATUS                 PAYMENT_D     AMOUNT
------------------------------ --------- ----------
UPI
Successful                     08-SEP-26        550


        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_ID   ORDER_ID
---------- ---------- ------------ ---------- ----------
PAYMENT_METHOD
--------------------------------------------------
PAYMENT_STATUS                 PAYMENT_D     AMOUNT
------------------------------ --------- ----------
         4 Chaitali                             1004 23-SEP-26
Football
         1        650          650          4       1004

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_ID   ORDER_ID
---------- ---------- ------------ ---------- ----------
PAYMENT_METHOD
--------------------------------------------------
PAYMENT_STATUS                 PAYMENT_D     AMOUNT
------------------------------ --------- ----------
Cash on Delivery
Successful                     04-SEP-26        750


7 rows selected.


SQL> SELECT
  2      C.NAME,
  3      O.ORDER_ID,
  4      O.ORDER_DATE,
  5      P.PRODUCT_NAME,
  6      OI.QUANTITY,
  7      OI.UNIT_PRICE,
  8      O.TOTAL_AMOUNT
  9  FROM CUSTOMER C
 10  JOIN ORDERS O
 11  ON C.ID = O.CUSTOMER_ID
 12  JOIN ORDER_ITEM OI
 13  ON O.ORDER_ID = OI.ORDER_ID
 14  JOIN PRODUCT P
 15  ON OI.PRODUCT_ID = P.PRODUCT_ID
 16  ORDER BY O.ORDER_ID;

NAME                             ORDER_ID ORDER_DAT
------------------------------ ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT
---------- ---------- ------------
Ramesh                               1001 20-SEP-26
ABC Learning Kit
         2        300         1350

Khilan                               1002 28-SEP-26
Remote Car
         4        850          850

NAME                             ORDER_ID ORDER_DAT
------------------------------ ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT
---------- ---------- ------------

kaushik                              1003 22-SEP-26
Chess Board
         1       1500         1500

Chaitali                             1004 23-SEP-26
Football

NAME                             ORDER_ID ORDER_DAT
------------------------------ ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT
---------- ---------- ------------
         1        650          650

Ramesh                               1006 25-SEP-26
Superhero Figure
         2        550         1100

Khilan                               1007 26-SEP-26

NAME                             ORDER_ID ORDER_DAT
------------------------------ ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT
---------- ---------- ------------
ABC Learning Kit
         3        600         1800

kaushik                              1008 27-SEP-26
Remote Car
         1        750          750


7 rows selected.


SQL> SELECT
  2      PY.*,
  3      O.CUSTOMER_ID,
  4      O.ORDER_DATE,
  5      O.ORDER_STATUS,
  6      O.TOTAL_AMOUNT
  7  FROM PAYMENT PY
  8  INNER JOIN ORDERS O
  9  ON PY.ORDER_ID = O.ORDER_ID
 10  ORDER BY PY.ORDER_ID;

PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------------------------------------
PAYMENT_STATUS                 PAYMENT_D     AMOUNT CUSTOMER_ID ORDER_DAT
------------------------------ --------- ---------- ----------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
         1       1001 UPI
Successful                     01-SEP-26        599           1 20-SEP-26
Confirmed                    1350

         2       1002 Credit Card
Successful                     02-SEP-26        899           2 28-SEP-26
Shipped                       850

PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------------------------------------
PAYMENT_STATUS                 PAYMENT_D     AMOUNT CUSTOMER_ID ORDER_DAT
------------------------------ --------- ---------- ----------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------

         3       1003 Debit Card
Failed                         03-SEP-26        450           3 22-SEP-26
Delivered                    1500

         4       1004 Cash on Delivery
Successful                     04-SEP-26        750           4 23-SEP-26

PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------------------------------------
PAYMENT_STATUS                 PAYMENT_D     AMOUNT CUSTOMER_ID ORDER_DAT
------------------------------ --------- ---------- ----------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
Pending                       650

         5       1005 UPI
Successful                     05-SEP-26       1200           5 24-SEP-26
Confirmed                     950

         6       1006 Credit Card

PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------------------------------------
PAYMENT_STATUS                 PAYMENT_D     AMOUNT CUSTOMER_ID ORDER_DAT
------------------------------ --------- ---------- ----------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
Failed                         06-SEP-26        650           1 25-SEP-26
Shipped                      1100

         7       1007 Debit Card
Successful                     07-SEP-26        999           2 26-SEP-26
Delivered                    1800


PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------------------------------------
PAYMENT_STATUS                 PAYMENT_D     AMOUNT CUSTOMER_ID ORDER_DAT
------------------------------ --------- ---------- ----------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
         8       1008 UPI
Successful                     08-SEP-26        550           3 27-SEP-26
Confirmed                     750


8 rows selected.
