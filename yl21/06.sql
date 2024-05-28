/* Täidetud tellimuste arv viimase aasta jooksul ja müükide summa. */

/*
select year(order_date) as 'Viimane aasta', count(*) as 'Tellimuste arv', round(sum(price),2) as 'Müükide summa' from orders o
left join books b on o.book_id = b.id
where status = 'sent' and year(order_date) = 2017
group by year(order_date);
*/

/* arvutab ainult saadetud tellimuste summa

SELECT 
    YEAR(o.order_date) AS 'Viimane aasta',
    COUNT(*) AS 'Tellimuste arv',
    ROUND(SUM(price), 2) AS 'Müükide summa'
FROM
    orders o
        LEFT JOIN
    books b ON o.book_id = b.id
WHERE
    status = 'sent'
        AND YEAR(order_date) = (SELECT 
            MAX(YEAR(order_date))
        FROM
            orders);
*/
            
SELECT 
    YEAR(o.order_date) AS 'Viimane aasta',
    COUNT(*) AS 'Tellimuste arv',
    ROUND(SUM(price), 2) AS 'Müükide summa'
FROM
    orders o
        LEFT JOIN
    books b ON o.book_id = b.id
WHERE

        YEAR(order_date) = (SELECT 
            MAX(YEAR(order_date))
        FROM
            orders);