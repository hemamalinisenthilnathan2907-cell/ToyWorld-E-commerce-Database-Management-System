SQL> SELECT COUNT(*) AS TOTAL_ORDERS
  2  FROM ORDERS;

TOTAL_ORDERS
------------
           8

SQL> SELECT SUM(TOTAL_AMOUNT) AS TOTAL_SALES
  2  FROM ORDERS;

TOTAL_SALES
-----------
       8950

SQL> SELECT AVG(TOTAL_AMOUNT) AS AVERAGE_ORDER
  2  FROM ORDERS;

AVERAGE_ORDER
-------------
      1118.75

SQL> SELECT MIN(TOTAL_AMOUNT) AS LOWEST_ORDER
  2  FROM ORDERS;

LOWEST_ORDER
------------
         650

SQL> SELECT MAX(TOTAL_AMOUNT) AS HIGHEST_ORDER
  2  FROM ORDERS;

HIGHEST_ORDER
-------------
         1800

SQL> SELECT SUM(TOTAL_AMOUNT) AS TOTAL_SALES
  2  FROM ORDERS;

TOTAL_SALES
-----------
       8950

SQL> SELECT
  2      C.ID,
  3      C.NAME,
  4      SUM(O.TOTAL_AMOUNT) AS TOTAL_PURCHASE
  5  FROM CUSTOMER C
  6  JOIN ORDERS O
  7  ON C.ID = O.CUSTOMER_ID
  8  GROUP BY C.ID, C.NAME
  9  ORDER BY TOTAL_PURCHASE DESC;

        ID NAME                           TOTAL_PURCHASE
---------- ------------------------------ --------------
         2 Khilan                                   2650
         1 Ramesh                                   2450
         3 kaushik                                  2250
         5 Hardik                                    950
         4 Chaitali                                  650

SQL> SELECT
  2      C.ID,
  3      C.NAME,
  4      SUM(O.TOTAL_AMOUNT) AS TOTAL_PURCHASE
  5  FROM CUSTOMER C
  6  JOIN ORDERS O
  7  ON C.ID = O.CUSTOMER_ID
  8  GROUP BY C.ID, C.NAME
  9  ORDER BY TOTAL_PURCHASE DESC
 10  FETCH FIRST 5 ROWS ONLY;

        ID NAME                           TOTAL_PURCHASE
---------- ------------------------------ --------------
         2 Khilan                                   2650
         1 Ramesh                                   2450
         3 kaushik                                  2250
         5 Hardik                                    950
         4 Chaitali                                  650

SQL> SELECT
  2      P.PRODUCT_ID,
  3      P.PRODUCT_NAME,
  4      SUM(OD.QUANTITY) AS TOTAL_QUANTITY_SOLD
  5  FROM PRODUCT P
  6  JOIN ORDER_ITEM OD
  7  ON P.PRODUCT_ID = OD.PRODUCT_ID
  8  GROUP BY P.PRODUCT_ID, P.PRODUCT_NAME
  9  ORDER BY TOTAL_QUANTITY_SOLD DESC;

PRODUCT_ID PRODUCT_NAME                                                                                         TOTAL_QUANTITY_SOLD
---------- ---------------------------------------------------------------------------------------------------- -------------------
       101 ABC Learning Kit                                                                                                       5
       103 Remote Car                                                                                                             5
       109 Superhero Figure                                                                                                       2
       105 Football                                                                                                               1
       104 Chess Board                                                                                                            1

SQL> SELECT
  2      P.PRODUCT_ID,
  3      P.PRODUCT_NAME,
  4      SUM(OD.QUANTITY) AS TOTAL_QUANTITY,
  5      SUM(OD.QUANTITY * OD.UNIT_PRICE) AS TOTAL_SALES
  6  FROM PRODUCT P
  7  JOIN ORDER_ITEM OD
  8  ON P.PRODUCT_ID = OD.PRODUCT_ID
  9  GROUP BY P.PRODUCT_ID, P.PRODUCT_NAME
 10  ORDER BY TOTAL_SALES DESC;

PRODUCT_ID PRODUCT_NAME                                                                                         TOTAL_QUANTITY TOTAL_SALES
---------- ---------------------------------------------------------------------------------------------------- -------------- -----------
       103 Remote Car                                                                                                        5        4150
       101 ABC Learning Kit                                                                                                  5        2400
       104 Chess Board                                                                                                       1        1500
       109 Superhero Figure                                                                                                  2        1100
       105 Football                                                                                                          1         650

SQL> SELECT
  2      C.CATEGORY_ID,
  3      C.CATEGORY_NAME,
  4      SUM(OD.QUANTITY * OD.UNIT_PRICE) AS CATEGORY_SALES
  5  FROM CATEGORY C
  6  JOIN PRODUCT P
  7  ON C.CATEGORY_ID = P.CATEGORY_ID
  8  JOIN ORDER_ITEM OD
  9  ON P.PRODUCT_ID = OD.PRODUCT_ID
 10  GROUP BY C.CATEGORY_ID, C.CATEGORY_NAME
 11  ORDER BY CATEGORY_SALES DESC;

CATEGORY_ID CATEGORY_NAME                                      CATEGORY_SALES
----------- -------------------------------------------------- --------------
          3 Remote Control Toys                                          4150
          1 Educational Toys                                             2400
          4 Board Games                                                  1500
          9 Action Figures                                               1100
          5 Outdoor Toys                                                  650

SQL> SELECT
  2      C.NAME AS CUSTOMER_NAME,
  3      O.ORDER_ID,
  4      P.PRODUCT_NAME,
  5      CAT.CATEGORY_NAME,
  6      OD.QUANTITY,
  7      OD.UNIT_PRICE,
  8      (OD.QUANTITY * OD.UNIT_PRICE) AS TOTAL_AMOUNT
  9  FROM CUSTOMER C
 10  JOIN ORDERS O
 11  ON C.ID = O.CUSTOMER_ID
 12  JOIN ORDER_ITEM OD
 13  ON O.ORDER_ID = OD.ORDER_ID
 14  JOIN PRODUCT P
 15  ON OD.PRODUCT_ID = P.PRODUCT_ID
 16  JOIN CATEGORY CAT
 17  ON P.CATEGORY_ID = CAT.CATEGORY_ID;

CUSTOMER_NAME                    ORDER_ID PRODUCT_NAME                                                                                         CATEGORY_NAME                 QUANTITY UNIT_PRICE TOTAL_AMOUNT
------------------------------ ---------- ---------------------------------------------------------------------------------------------------- -------------------------------------------------- ---------- ---------- ------------
Ramesh                               1001 ABC Learning Kit                                                                                     Educational Toys             2         300          600
Ramesh                               1006 Superhero Figure                                                                                     Action Figures               2         550         1100
Khilan                               1002 Remote Car                                                                                           Remote Control Toys          4         850         3400
Khilan                               1007 ABC Learning Kit                                                                                     Educational Toys             3         600         1800
kaushik                              1003 Chess Board                                                                                          Board Games                  1        1500         1500
kaushik                              1008 Remote Car                                                                                           Remote Control Toys          1         750          750
Chaitali                             1004 Football                                                                                             Outdoor Toys                 1         650          650

7 rows selected.
