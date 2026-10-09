SQL> CREATE TABLE Review (
  2     Review_ID INT PRIMARY KEY,
  3     Customer_ID INT,
  4     Product_ID INT,
  5     Rating INT,
  6     Review_Text VARCHAR2(500),
  7     Review_Date DATE,
  8     FOREIGN KEY (Customer_ID) REFERENCES Customer(ID),
  9     FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
 10  );

Table created.


SQL> INSERT INTO Review
  2  (Review_ID, Customer_ID, Product_ID, Rating, Review_Text, Review_Date)
  3  VALUES
  4  (1, 1, 101, 5, 'Very good quality toy', DATE '2026-10-01');

1 row created.


SQL> INSERT INTO Review
  2  (Review_ID, Customer_ID, Product_ID, Rating, Review_Text, Review_Date)
  3  VALUES
  4  (2, 2, 103, 4, 'My child loved this toy', DATE '2026-10-02');

1 row created.


SQL> INSERT INTO Review
  2  (Review_ID, Customer_ID, Product_ID, Rating, Review_Text, Review_Date)
  3  VALUES
  4  (3, 3, 104, 5, 'Good product and worth the price', DATE '2026-10-03');

1 row created.


SQL> INSERT INTO Review
  2  (Review_ID, Customer_ID, Product_ID, Rating, Review_Text, Review_Date)
  3  VALUES
  4  (4, 4, 105, 4, 'Nice toy with good quality', DATE '2026-10-04');

1 row created.


SQL> INSERT INTO Review
  2  (Review_ID, Customer_ID, Product_ID, Rating, Review_Text, Review_Date)
  3  VALUES
  4  (5, 5, 108, 5, 'Excellent toy for children', DATE '2026-10-05');

1 row created.

SQL> COMMIT;

Commit complete.


SQL> SELECT Product_ID, Customer_ID, Review_Text, Review_Date
  2  FROM Review;

PRODUCT_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------
REVIEW_DATE
-----------
       101           1
Very good quality toy
01-OCT-26

       103           2
My child loved this toy
02-OCT-26

       104           3
Good product and worth the price
03-OCT-26

       105           4
Nice toy with good quality
04-OCT-26

       108           5
Excellent toy for children
05-OCT-26

SQL> COMMIT;

Commit complete.
