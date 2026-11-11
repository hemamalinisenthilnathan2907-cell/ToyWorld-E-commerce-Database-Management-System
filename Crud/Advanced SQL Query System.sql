SQL> SELECT ORDER_ID, CUSTOMER_ID, TOTAL_AMOUNT
  2  FROM ORDERS
  3  WHERE TOTAL_AMOUNT >
  4  (SELECT AVG(TOTAL_AMOUNT)
  5   FROM ORDERS);

  ORDER_ID CUSTOMER_ID TOTAL_AMOUNT
---------- ----------- ------------
      1001           1         1350
      1003           3         1500
      1007           2         1800


SQL> SELECT PRODUCT_ID, PRODUCT_NAME, PRICE
  2  FROM PRODUCT
  3  WHERE PRICE > (SELECT AVG(PRICE) FROM PRODUCT);

PRODUCT_ID PRODUCT_NAME          PRICE
---------- -------------------- ------
       103 Remote Car             1200
       104 Chess Board             750


SQL> SELECT PRODUCT_ID, PRODUCT_NAME, PRICE
  2  FROM PRODUCT
  3  WHERE PRICE <
  4  (SELECT AVG(PRICE)
  5   FROM PRODUCT);

PRODUCT_ID PRODUCT_NAME          PRICE
---------- -------------------- ------
       101 ABC Learning Kit        450
       102 Teddy Bear              550
       105 Football                450
       109 Superhero Figure        600


SQL> SELECT CUSTOMER_ID,
  2  SUM(TOTAL_AMOUNT) AS TOTAL_PURCHASE
  3  FROM ORDERS
  4  GROUP BY CUSTOMER_ID;

CUSTOMER_ID TOTAL_PURCHASE
----------- --------------
          1           2450
          2           2650
          3           2250
          4            650
          5            950


SQL> SELECT MAX(TOTAL_PURCHASE)
  2  FROM
  3  (
  4   SELECT CUSTOMER_ID,
  5   SUM(TOTAL_AMOUNT) AS TOTAL_PURCHASE
  6   FROM ORDERS
  7   GROUP BY CUSTOMER_ID
  8  );

MAX(TOTAL_PURCHASE)
-------------------
               2650


SQL> SELECT C.ID, C.NAME,
  2  SUM(O.TOTAL_AMOUNT) AS TOTAL_PURCHASE
  3  FROM CUSTOMER C
  4  JOIN ORDERS O
  5  ON C.ID = O.CUSTOMER_ID
  6  GROUP BY C.ID, C.NAME
  7  HAVING SUM(O.TOTAL_AMOUNT) =
  8  (
  9   SELECT MAX(TOTAL_PURCHASE)
 10   FROM
 11   (
 12    SELECT SUM(TOTAL_AMOUNT) AS TOTAL_PURCHASE
 13    FROM ORDERS
 14    GROUP BY CUSTOMER_ID
 15   )
 16  );

        ID NAME                           TOTAL_PURCHASE
---------- ------------------------------ --------------
         2 Khilan                                   2650

         
SQL> SELECT C.ID, C.NAME,
  2  O.ORDER_ID, O.TOTAL_AMOUNT
  3  FROM CUSTOMER C
  4  JOIN ORDERS O
  5  ON C.ID = O.CUSTOMER_ID
  6  WHERE O.TOTAL_AMOUNT >
  7  (
  8   SELECT AVG(TOTAL_AMOUNT)
  9   FROM ORDERS
 10  )
 11  ORDER BY O.TOTAL_AMOUNT DESC;

        ID NAME                             ORDER_ID TOTAL_AMOUNT
---------- ------------------------------ ---------- ------------
         2 Khilan                               1007         1800
         3 kaushik                              1003         1500
         1 Ramesh                               1001         1350


SQL> SELECT P.PRODUCT_ID,
  2         P.PRODUCT_NAME,
  3         SUM(OI.QUANTITY * OI.UNIT_PRICE) AS TOTAL_SALES
  4  FROM PRODUCT P
  5  JOIN ORDER_ITEM OI
  6  ON P.PRODUCT_ID = OI.PRODUCT_ID
  7  GROUP BY P.PRODUCT_ID, P.PRODUCT_NAME
  8  HAVING SUM(OI.QUANTITY * OI.UNIT_PRICE) >
  9  (
 10   SELECT AVG(PRODUCT_SALES)
 11   FROM
 12   (
 13    SELECT SUM(QUANTITY * UNIT_PRICE) AS PRODUCT_SALES
 14    FROM ORDER_ITEM
 15    GROUP BY PRODUCT_ID
 16   )
 17  )
 18  ORDER BY TOTAL_SALES DESC;

PRODUCT_ID PRODUCT_NAME         TOTAL_SALES
---------- -------------------- -----------
       103 Remote Car               4150.00
       101 ABC Learning Kit         2400.00


SQL> SELECT C.ID, C.NAME,
  2  COUNT(O.ORDER_ID) AS TOTAL_ORDERS,
  3  SUM(O.TOTAL_AMOUNT) AS TOTAL_PURCHASE,
  4  AVG(O.TOTAL_AMOUNT) AS AVERAGE_ORDER_VALUE
  5  FROM CUSTOMER C
  6  JOIN ORDERS O
  7  ON C.ID = O.CUSTOMER_ID
  8  GROUP BY C.ID, C.NAME
  9  ORDER BY TOTAL_PURCHASE DESC;

        ID NAME                           TOTAL_ORDERS TOTAL_PURCHASE AVERAGE_ORDER_VALUE
---------- ------------------------------ ------------ -------------- -------------------
         2 Khilan                                    2           2650                1325
         1 Ramesh                                    2           2450                1225
         3 kaushik                                   2           2250                1125
         5 Hardik                                    1            950                 950
         4 Chaitali                                  1            650                 650


SQL> SELECT P.PRODUCT_ID,
  2         P.PRODUCT_NAME,
  3         COUNT(DISTINCT OI.ORDER_ID) AS NUMBER_OF_ORDERS,
  4         SUM(OI.QUANTITY) AS TOTAL_QUANTITY_SOLD,
  5         SUM(OI.QUANTITY * OI.UNIT_PRICE) AS TOTAL_SALES,
  6         AVG(OI.UNIT_PRICE) AS AVERAGE_PRICE
  7  FROM PRODUCT P
  8  JOIN ORDER_ITEM OI
  9  ON P.PRODUCT_ID = OI.PRODUCT_ID
 10  GROUP BY P.PRODUCT_ID, P.PRODUCT_NAME
 11  ORDER BY TOTAL_SALES DESC;

PRODUCT_ID PRODUCT_NAME         NUMBER_OF_ORDERS TOTAL_QUANTITY_SOLD TOTAL_SALES AVERAGE_PRICE
---------- -------------------- ---------------- ------------------- ----------- -------------
       103 Remote Car                          2                   5     4150.00           800
       101 ABC Learning Kit                    2                   5     2400.00           450
       104 Chess Board                         1                   1     1500.00          1500
       109 Superhero Figure                    1                   2     1100.00           550
       105 Football                            1                   1      650.00           650


SQL> SELECT C.CATEGORY_ID,
  2         C.CATEGORY_NAME,
  3         COUNT(DISTINCT OI.ORDER_ID) AS TOTAL_ORDERS,
  4         SUM(OI.QUANTITY) AS TOTAL_QUANTITY_SOLD,
  5         SUM(OI.QUANTITY * OI.UNIT_PRICE) AS TOTAL_SALES,
  6         AVG(OI.UNIT_PRICE) AS AVERAGE_PRICE
  7  FROM CATEGORY C
  8  JOIN PRODUCT P
  9  ON C.CATEGORY_ID = P.CATEGORY_ID
 10  JOIN ORDER_ITEM OI
 11  ON P.PRODUCT_ID = OI.PRODUCT_ID
 12  GROUP BY C.CATEGORY_ID, C.CATEGORY_NAME
 13  ORDER BY TOTAL_SALES DESC;

CATEGORY_ID CATEGORY_NAME        TOTAL_ORDERS TOTAL_QUANTITY_SOLD TOTAL_SALES AVERAGE_PRICE
----------- -------------------- ------------ ------------------- ----------- -------------
          3 Remote Control Toys             2                   5     4150.00        800.00
          1 Educational Toys                2                   5     2400.00        450.00
          4 Board Games                     1                   1     1500.00       1500.00
          9 Action Figures                  1                   2     1100.00        550.00
          5 Outdoor Toys                    1                   1      650.00        650.00
