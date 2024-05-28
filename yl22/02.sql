/* Kõige odavam ja kõige kallim raamat ning raamatu hindade keskmine. 
(1.04, 59.98, 30.53) */

SELECT 
    ROUND(MIN(price), 2)
FROM
    books;

SELECT 
    ROUND(MAX(price), 2)
FROM
    books;

SELECT 
    ROUND(AVG(price), 2)
FROM
    books;