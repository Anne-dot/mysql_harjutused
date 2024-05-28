/* Väljastada kliendid viimase aasta jooksul tehtud tellimuste põhjal kulutatud summa järgi. */


SELECT 
    first_name, last_name, ROUND(SUM(price), 2) AS total
FROM
    orders o
        LEFT JOIN
    clients c ON o.client_id = c.id
        LEFT JOIN
    books b ON b.id = o.book_id
WHERE
    YEAR(order_date) = (SELECT 
            MAX(YEAR(order_date))
        FROM
            orders)
GROUP BY c.id
ORDER BY SUM(price) DESC;


/*
Kontrollin samma-sammult Elene Craini tehinguid, kas saan summaks 152,31

select id from clients
where first_name = 'Elene' and last_name = 'Crain';

select * from orders where client_id = 980;

select id, price from books where id = 233 or id = 193 or id = 1894 or id = 1401
*/