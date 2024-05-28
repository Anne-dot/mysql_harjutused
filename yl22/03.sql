/* Kõige kallim kasutatud raamat. (59.87) */

SELECT 
    ROUND(MAX(price), 2)
FROM
    books
WHERE
    type = 'used';

SELECT 
    title, ROUND(price, 2)
FROM
    books
WHERE
    price = (SELECT 
            MAX(price)
        FROM
            books
        WHERE
            type = 'used');