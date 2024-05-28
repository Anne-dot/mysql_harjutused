/* Raamatute nimekiri, mille hind on keskmisest kõrgem. (1096) */

select * from books
where price > (select avg(price) from books);