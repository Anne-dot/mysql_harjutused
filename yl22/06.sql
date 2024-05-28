/*
Raamatud, mis on kallimad kui enim-müüdud autori raamatute keskmine hind.
Alampäring. (952 kirjet)

https://www.youtube.com/watch?v=Vj6RqA_X-IE
- where clause
- select clause
- from clause

outer query and subquery

total orders = 2300
mitme autoriga on osad raamatud seega authors 2442, kelle raamatut on tellitud
*/

SELECT 
    *
FROM
    books
WHERE
    price > (SELECT 
            AVG(price)
        FROM
            (SELECT 
                id,
                    book_id,
                    (SELECT 
                            price
                        FROM
                            books
                        WHERE
                            books.id = orders.book_id) AS price
            FROM
                orders
            WHERE
                book_id IN (SELECT 
                        book_id
                    FROM
                        book_authors
                    WHERE
                        author_id = 885)) AS agg_table);