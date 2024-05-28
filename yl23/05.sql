/*
Lisa tellimuste tabelisse uus tellimus, kus tellitakse raamat, 
mille nimi on Vendetta ja mida tellib klient, kell kasutajanimi on mcage1o. 
Kasuta alampäringuid.

https://www.youtube.com/watch?v=Vj6RqA_X-IE
*/

/* abipäringud

select id from books where title = 'Vendetta';

select id from clients
where username = 'mcage1o';

select* from orders
order by id desc
limit 2;

*/

insert into orders ( delivery_address, order_date, status, client_id, book_id)
values ( 'Pargi 18 Tartu', now(), 'ordered', (select id from clients
where username = 'mcage1o'), (select id from books where title = 'Vendetta'));
