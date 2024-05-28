/* Täidetud tellimuste arv aasta kaupa ja müükide summa. 
Pane veergudele ilusad pealkirjad ja ümarda summa kahe komakohani. 
LEFT JOIN (tulemus summad 5814.08, 18676.06, 21211.61, 23661.34) */


SELECT 
    YEAR(order_date) AS 'Aasta',
    COUNT(*) AS 'Tellimuste arv',
    ROUND(SUM(price),2) AS 'Müükide summa'
FROM
    orders o
        LEFT JOIN
    books b ON o.book_id = b.id
group by year(order_date);