SQL> CREATE TABLE Rating (
  2     Rating_ID INT PRIMARY KEY,
  3     Customer_ID INT,
  4     Product_ID INT,
  5     Rating INT,
  6     Rating_Date DATE,
  7     FOREIGN KEY (Customer_ID) REFERENCES Customer(ID),
  8     FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
  9  );

Table created.


SQL> INSERT INTO Rating VALUES
  2  (1, 1, 101, 5, DATE '2026-10-01');

1 row created.


SQL> INSERT INTO Rating VALUES
  2  (2, 2, 103, 4, DATE '2026-10-02');

1 row created.


SQL> INSERT INTO Rating VALUES
  2  (3, 3, 104, 5, DATE '2026-10-03');

1 row created.


SQL> INSERT INTO Rating VALUES
  2  (4, 4, 105, 4, DATE '2026-10-04');

1 row created.


SQL> INSERT INTO Rating VALUES
  2  (5, 5, 108, 5, DATE '2026-10-05');

1 row created.

SQL> COMMIT;

Commit complete.


SQL> SELECT Product_ID, AVG(Rating) AS Average_Rating
  2  FROM Rating
  3  GROUP BY Product_ID;

PRODUCT_ID AVERAGE_RATING
---------- --------------
       101              5
       103              4
       104              5
       105              4
       108              5

SQL> COMMIT;

Commit complete.


SQL> SELECT Product_ID, AVG(Rating) AS Average_Rating
  2  FROM Rating
  3  GROUP BY Product_ID
  4  HAVING AVG(Rating) >= 4;

PRODUCT_ID AVERAGE_RATING
---------- --------------
       101              5
       103              4
       104              5
       105              4
       108              5

SQL> COMMIT;

Commit complete.

SQL> SELECT
  2      P.PRODUCT_ID,
  3      P.PRODUCT_NAME,
  4      ROUND(AVG(R.RATING), 2) AS AVERAGE_RATING,
  5      COUNT(R.RATING_ID) AS TOTAL_RATINGS
  6  FROM Product P
  7  JOIN Rating R
  8  ON P.PRODUCT_ID = R.PRODUCT_ID
  9  GROUP BY P.PRODUCT_ID, P.PRODUCT_NAME
 10  ORDER BY P.PRODUCT_ID;

PRODUCT_ID PRODUCT_NAME                  AVERAGE_RATING TOTAL_RATINGS
---------- ----------------------------- -------------- -------------
       101 ABC Learning Kit                          5             1
       103 Remote Car                                4             1
       104 Chess Board                               5             1
       105 Football                                  4             1
       108 Jigsaw Puzzle                             5             1

SQL> COMMIT;

Commit complete.
