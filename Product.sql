CREATE TABLE Product (
    Product_ID NUMBER PRIMARY KEY,
    Product_Name VARCHAR2(100) NOT NULL,
    Category_ID NUMBER NOT NULL,
    Price NUMBER(10,2) NOT NULL,
    Stock NUMBER,
    Brand VARCHAR2(50),
    Description VARCHAR2(200),
    CONSTRAINT fk_product_category
    FOREIGN KEY (Category_ID)
    REFERENCES Category(Category_ID)
);

INSERT INTO Product VALUES
(101, 'ABC Learning Kit', 1, 450, 25, 'FunLearn', 'Educational learning kit');

INSERT INTO Product VALUES
(102, 'Teddy Bear', 2, 550, 20, 'ToyLand', 'Soft teddy bear');

INSERT INTO Product VALUES
(103, 'Remote Car', 3, 1200, 15, 'SpeedX', 'Remote controlled car');

INSERT INTO Product VALUES
(104, 'Chess Board', 4, 650, 18, 'Classic Games', 'Wooden chess board');

INSERT INTO Product VALUES
(105, 'Football', 5, 400, 30, 'PlayPro', 'Outdoor football');

INSERT INTO Product VALUES
(106, 'Barbie Doll', 6, 850, 12, 'DollWorld', 'Fashion doll');

INSERT INTO Product VALUES
(107, 'Building Blocks Set', 7, 700, 22, 'BuildMax', 'Colorful building blocks');

INSERT INTO Product VALUES
(108, 'Jigsaw Puzzle', 8, 350, 28, 'PuzzlePro', 'Kids jigsaw puzzle');

INSERT INTO Product VALUES
(109, 'Superhero Figure', 9, 600, 16, 'HeroToys', 'Action figure');

INSERT INTO Product VALUES
(110, 'Mini Piano', 10, 900, 10, 'MusicKids', 'Toy musical piano');

COMMIT;

SELECT * FROM Product;

UPDATE Product
SET Price = 750
WHERE Product_ID = 104;

UPDATE Product
SET Price = 450
WHERE Product_ID = 105;

COMMIT;

DELETE FROM Product
WHERE Product_ID = 106;

DELETE FROM Product
WHERE Product_ID = 107;

DELETE FROM Product
WHERE Product_ID = 108;

DELETE FROM Product
WHERE Product_ID = 110;

COMMIT;

SELECT * FROM Product;

SELECT
    C.Category_ID,
    C.Category_Name,
    P.Product_ID,
    P.Product_Name,
    P.Price,
    P.Stock,
    P.Brand
FROM Category C
INNER JOIN Product P
ON C.Category_ID = P.Category_ID
ORDER BY C.Category_ID;
