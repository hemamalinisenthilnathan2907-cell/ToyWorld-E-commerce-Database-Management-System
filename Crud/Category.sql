SQL> CREATE TABLE Category (
  2      Category_ID NUMBER PRIMARY KEY,
  3      Category_Name VARCHAR2(50) UNIQUE,
  4      Description VARCHAR2(200)
  5  );

Table created.

SQL> INSERT INTO Category VALUES (1, 'Educational Toys', 'Toys that support learning and education');
1 row created.

SQL> INSERT INTO Category VALUES (2, 'Soft Toys', 'Soft and cuddly toys for children');
1 row created.

SQL> INSERT INTO Category VALUES (3, 'Remote Control Toys', 'Toys operated using remote control');
1 row created.

SQL> INSERT INTO Category VALUES (4, 'Board Games', 'Games played using boards and pieces');
1 row created.

SQL> INSERT INTO Category VALUES (5, 'Outdoor Toys', 'Toys suitable for outdoor activities');
1 row created.

SQL> INSERT INTO Category VALUES (6, 'Dolls', 'Dolls and doll accessories');
1 row created.

SQL> INSERT INTO Category VALUES (7, 'Building Blocks', 'Blocks used for building and construction');
1 row created.

SQL> INSERT INTO Category VALUES (8, 'Puzzles', 'Puzzles for logical thinking and problem solving');
1 row created.

SQL> INSERT INTO Category VALUES (9, 'Action Figures', 'Character-based action figures');
1 row created.

SQL> INSERT INTO Category VALUES (10, 'Musical Toys', 'Toys that produce musical sounds');
1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM Category;

CATEGORY_ID CATEGORY_NAME          DESCRIPTION
----------- ---------------------- --------------------------------------------------
          1 Educational Toys        Toys that support learning and education
          2 Soft Toys               Soft and cuddly toys for children
          3 Remote Control Toys     Toys operated using remote control
          4 Board Games              Games played using boards and pieces
          5 Outdoor Toys             Toys suitable for outdoor activities
          6 Dolls                    Dolls and doll accessories
          7 Building Blocks          Blocks used for building and construction
          8 Puzzles                  Puzzles for logical thinking and problem solving
          9 Action Figures           Character-based action figures
         10 Musical Toys             Toys that produce musical sounds

10 rows selected.

SQL> COMMIT;

Commit complete.


SQL> SELECT
  2      C.Category_ID,
  3      C.Category_Name,
  4      P.Product_ID,
  5      P.Product_Name,
  6      P.Price,
  7      P.Stock,
  8      P.Brand
  9  FROM Category C
 10  INNER JOIN Product P
 11  ON C.Category_ID = P.Category_ID
 12  ORDER BY C.Category_ID;

CATEGORY_ID CATEGORY_NAME          PRODUCT_ID PRODUCT_NAME                 PRICE   STOCK BRAND
----------- ---------------------- ---------- ---------------------------- ------- ----- ------------------
          1 Educational Toys               101 ABC Learning Kit               450      25 FunLearn
          3 Remote Control Toys            103 Remote Car                    1350      15 SpeedX
          4 Board Games                    104 Chess Board                    750      18 Classic Games
          5 Outdoor Toys                   105 Football                       450      30 PlayPro
          8 Puzzles                        108 Jigsaw Puzzle                  350      28 PuzzlePro
          9 Action Figures                 109 Superhero Figure                600      16 HeroToys

6 rows selected.


SQL> COMMIT;

Commit complete.

