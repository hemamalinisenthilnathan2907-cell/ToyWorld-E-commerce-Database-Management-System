SQL> SELECT * FROM PRODUCT;

PRODUCT_ID PRODUCT_NAME              CATEGORY_ID      PRICE      STOCK BRAND                                              DESCRIPTION
---------- ------------------------- ----------- ---------- ---------- -------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
       101 ABC Learning Kit                    1        450         25 FunLearn                                           Educational learning kit
       102 Teddy Bear                          2        550         20 ToyLand                                            Soft teddy bear
       103 Remote Car                          3       1200         15 SpeedX                                             Remote controlled car
       104 Chess Board                         4        750         18 Classic Games                                      Wooden chess board
       105 Football                            5        450         30 PlayPro                                            Outdoor football
       109 Superhero Figure                    9        600         16 HeroToys                                           Action figure

6 rows selected.


SQL> SELECT Product_ID, Product_Name, Price FROM PRODUCT;

PRODUCT_ID PRODUCT_NAME                   PRICE
---------- ------------------------- ----------
       101 ABC Learning Kit                 450
       102 Teddy Bear                       550
       103 Remote Car                      1200
       104 Chess Board                      750
       105 Football                         450
       109 Superhero Figure                 600

6 rows selected.


SQL> SELECT * FROM PRODUCT
  2  WHERE Price < 1000;

PRODUCT_ID PRODUCT_NAME              CATEGORY_ID      PRICE      STOCK BRAND                                              DESCRIPTION
---------- ------------------------- ----------- ---------- ---------- -------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
       101 ABC Learning Kit                    1        450         25 FunLearn                                           Educational learning kit
       102 Teddy Bear                          2        550         20 ToyLand                                            Soft teddy bear
       104 Chess Board                         4        750         18 Classic Games                                      Wooden chess board
       105 Football                            5        450         30 PlayPro                                            Outdoor football
       109 Superhero Figure                    9        600         16 HeroToys                                           Action figure


SQL> SELECT * FROM PRODUCT
  2  WHERE Price > 100;

PRODUCT_ID PRODUCT_NAME              CATEGORY_ID      PRICE      STOCK BRAND                                              DESCRIPTION
---------- ------------------------- ----------- ---------- ---------- -------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
       101 ABC Learning Kit                    1        450         25 FunLearn                                           Educational learning kit
       102 Teddy Bear                          2        550         20 ToyLand                                            Soft teddy bear
       103 Remote Car                          3       1200         15 SpeedX                                             Remote controlled car
       104 Chess Board                         4        750         18 Classic Games                                      Wooden chess board
       105 Football                            5        450         30 PlayPro                                            Outdoor football
       109 Superhero Figure                    9        600         16 HeroToys                                           Action figure

6 rows selected.


SQL> SELECT * FROM PRODUCT
  2  ORDER BY Price ASC;

PRODUCT_ID PRODUCT_NAME              CATEGORY_ID      PRICE      STOCK BRAND                                              DESCRIPTION
---------- ------------------------- ----------- ---------- ---------- -------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
       101 ABC Learning Kit                    1        450         25 FunLearn                                           Educational learning kit
       105 Football                            5        450         30 PlayPro                                            Outdoor football
       102 Teddy Bear                          2        550         20 ToyLand                                            Soft teddy bear
       109 Superhero Figure                    9        600         16 HeroToys                                           Action figure
       104 Chess Board                         4        750         18 Classic Games                                      Wooden chess board
       103 Remote Car                          3       1200         15 SpeedX                                             Remote controlled car

6 rows selected.


SQL> SELECT * FROM PRODUCT
  2  ORDER BY Price DESC;

PRODUCT_ID PRODUCT_NAME              CATEGORY_ID      PRICE      STOCK BRAND                                              DESCRIPTION
---------- ------------------------- ----------- ---------- ---------- -------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
       103 Remote Car                          3       1200         15 SpeedX                                             Remote controlled car
       104 Chess Board                         4        750         18 Classic Games                                      Wooden chess board
       109 Superhero Figure                    9        600         16 HeroToys                                           Action figure
       102 Teddy Bear                          2        550         20 ToyLand                                            Soft teddy bear
       105 Football                            5        450         30 PlayPro                                            Outdoor football
       101 ABC Learning Kit                    1        450         25 FunLearn                                           Educational learning kit

6 rows selected.


SQL> SELECT DISTINCT Category_ID
  2  FROM PRODUCT;

CATEGORY_ID
-----------
          1
          2
          3
          4
          5
          9

6 rows selected.


SQL> SELECT *
  2  FROM PRODUCT
  3  WHERE Price BETWEEN 400 AND 1000;

PRODUCT_ID PRODUCT_NAME              CATEGORY_ID      PRICE      STOCK BRAND                                              DESCRIPTION
---------- ------------------------- ----------- ---------- ---------- -------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
       101 ABC Learning Kit                    1        450         25 FunLearn                                           Educational learning kit
       102 Teddy Bear                          2        550         20 ToyLand                                            Soft teddy bear
       104 Chess Board                         4        750         18 Classic Games                                      Wooden chess board
       105 Football                            5        450         30 PlayPro                                            Outdoor football
       109 Superhero Figure                    9        600         16 HeroToys                                           Action figure


SQL> SELECT *
  2  FROM PRODUCT
  3  WHERE Category_ID = 1;

PRODUCT_ID PRODUCT_NAME              CATEGORY_ID      PRICE      STOCK BRAND                                              DESCRIPTION
---------- ------------------------- ----------- ---------- ---------- -------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
       101 ABC Learning Kit                    1        450         25 FunLearn                                           Educational learning kit


SQL> SELECT *
  2  FROM CUSTOMER;

   ID NAME                        AGE ADDRESS                            SALARY
---------- -------------------- ---------- ------------------------------ ----------
         1 Ramesh                       32 Ahmedabad                           30000
         2 Khilan                       25 Delhi                               30000
         3 Kaushik                      23 Kota                                30000
         4 Chaitali                     25 Mumbai                              75000
         5 Hardik                       27 Bhopal                              80000


SQL> SELECT *
  2  FROM CUSTOMER
  3  WHERE ID = 1;

      ID NAME                        AGE ADDRESS                            SALARY
---------- -------------------- ---------- ------------------------------ ----------
         1 Ramesh                       32 Ahmedabad                           30000


SQL> SELECT *
  2  FROM PRODUCT
  3  WHERE Price < 1000
  4  AND Category_ID = 1;

PRODUCT_ID PRODUCT_NAME              CATEGORY_ID      PRICE      STOCK BRAND                                              DESCRIPTION
---------- ------------------------- ----------- ---------- ---------- -------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
       109 Superhero Figure                    9        600         16 HeroToys                                           Action figure


SQL> SELECT *
  2  FROM PRODUCT
  3  WHERE Category_ID = 3
  4  OR Category_ID = 5;

PRODUCT_ID PRODUCT_NAME              CATEGORY_ID      PRICE      STOCK BRAND                                              DESCRIPTION
---------- ------------------------- ----------- ---------- ---------- -------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
       103 Remote Car                          3       1200         15 SpeedX                                             Remote controlled car
       105 Football                            5        450         30 PlayPro                                            Outdoor football


SQL> SELECT *
  2  FROM PRODUCT
  3  WHERE Category_ID IN (1 , 2, 3);

PRODUCT_ID PRODUCT_NAME              CATEGORY_ID      PRICE      STOCK BRAND                                              DESCRIPTION
---------- ------------------------- ----------- ---------- ---------- -------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
       101 ABC Learning Kit                    1        450         25 FunLearn                                           Educational learning kit
       102 Teddy Bear                          2        550         20 ToyLand                                            Soft teddy bear
       103 Remote Car                          3       1200         15 SpeedX                                             Remote controlled car


SQL> SELECT *
  2  FROM PRODUCT
  3  WHERE Price BETWEEN 100 AND 1000;

PRODUCT_ID PRODUCT_NAME              CATEGORY_ID      PRICE      STOCK BRAND                                              DESCRIPTION
---------- ------------------------- ----------- ---------- ---------- -------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
       101 ABC Learning Kit                    1        450         25 FunLearn                                           Educational learning kit
       102 Teddy Bear                          2        550         20 ToyLand                                            Soft teddy bear
       104 Chess Board                         4        750         18 Classic Games                                      Wooden chess board
       105 Football                            5        450         30 PlayPro                                            Outdoor football
       109 Superhero Figure                    9        600         16 HeroToys                                           Action figure


SQL> SELECT Product_ID, Product_Name, Price
  2  FROM PRODUCT
  3  ORDER BY Price DESC;

PRODUCT_ID PRODUCT_NAME                   PRICE
---------- ------------------------- ----------
       103 Remote Car                      1200
       104 Chess Board                      750
       109 Superhero Figure                 600
       102 Teddy Bear                       550
       105 Football                         450
       101 ABC Learning Kit                 450

6 rows selected.


SQL> SELECT C.ID, C.NAME,
  2         O.ORDER_ID, O.ORDER_DATE,
  3         O.ORDER_STATUS, O.TOTAL_AMOUNT
  4  FROM CUSTOMER C
  5  JOIN ORDERS O
  6  ON C.ID = O.CUSTOMER_ID;

        ID NAME                   ORDER_ID ORDER_DAT ORDER_STATUS         TOTAL_AMOUNT
---------- -------------------- ---------- --------- -------------------- ------------
         1 Ramesh                     1001 20-SEP-26 Confirmed                    1350
         2 Khilan                     1002 28-SEP-26 Shipped                       850
         3 Kaushik                    1003 22-SEP-26 Delivered                    1500
         4 Chaitali                   1004 23-SEP-26 Pending                       650
         5 Hardik                     1005 24-SEP-26 Confirmed                     950
         1 Ramesh                     1006 25-SEP-26 Shipped                      1100
         2 Khilan                     1007 26-SEP-26 Delivered                    1800
         3 Kaushik                    1008 27-SEP-26 Confirmed                     750

8 rows selected.


SQL> SELECT P.Product_ID, P.Product_Name,
  2         OI.Order_ID, OI.Quantity, OI.Unit_Price
  3  FROM PRODUCT P
  4  JOIN ORDER_ITEM OI
  5  ON P.Product_ID = OI.Product_ID;

PRODUCT_ID PRODUCT_NAME                ORDER_ID   QUANTITY UNIT_PRICE
---------- ------------------------- ---------- ---------- ----------
       101 ABC Learning Kit                1001          2        300
       103 Remote Car                      1002          4        850
       104 Chess Board                     1003          1       1500
       105 Football                        1004          1        650
       109 Superhero Figure                1006          2        550
       101 ABC Learning Kit                1007          3        600
       103 Remote Car                      1008          1        750

7 rows selected.


SQL> SELECT C.ID, C.NAME,
  2         COUNT(O.ORDER_ID) AS TOTAL_ORDERS
  3  FROM CUSTOMER C
  4  LEFT JOIN ORDERS O
  5  ON C.ID = O.CUSTOMER_ID
  6  GROUP BY C.ID, C.NAME;

       ID NAME                 TOTAL_ORDERS
---------- -------------------- ------------
         1 Ramesh                          2
         2 Khilan                          2
         3 Kaushik                         2
         4 Chaitali                        1
         5 Hardik                          1


SQL> SELECT C.ID, C.NAME,
  2         SUM(O.TOTAL_AMOUNT) AS TOTAL_PURCHASE
  3  FROM CUSTOMER C
  4  JOIN ORDERS O
  5  ON C.ID = O.CUSTOMER_ID
  6  GROUP BY C.ID, C.NAME;


        ID NAME                 TOTAL_PURCHASE
---------- -------------------- --------------
         1 Ramesh                         2450
         2 Khilan                         2650
         3 Kaushik                        2250
         4 Chaitali                        650
         5 Hardik                          950
