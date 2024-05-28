/*
Kasutatud raamatud, mis on kallimad kui uute raamatute keskmine hind. Väljasta
pealkiri, hind ja tüüp ja järjesta hinna järgi kasvavalt. (318 kirjet)
*/


/*
SELECT 
    title AS 'Pealkiri',
    ROUND(price, 2) AS 'Hind',
    type AS 'Tüüp'
FROM
    books
WHERE
    type = 'used'
        AND price > (SELECT 
            AVG(price)
        FROM
            books
        WHERE
            type = 'new')
ORDER BY price;
*/

SELECT 
    title AS 'Pealkiri',
    ROUND(price, 2) AS 'Hind',
    CASE
        WHEN type = 'used' THEN 'Kasutatud'
    END AS 'Tüüp'
FROM
    books
WHERE
    type = 'used'
        AND price > (SELECT 
            AVG(price)
        FROM
            books
        WHERE
            type = 'new')
ORDER BY price