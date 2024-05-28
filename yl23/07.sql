/* 7) Kustuta kõik autorid, kes ei ole kirjutanud ühtki raamatut. Kasuta alampäringuid. Testi
enne Select-lausega. (Järgi peaks jääma 1086 autorit) */

/* Testimise päring

select * from authors
where authors.id not in (select author_id from book_authors);

*/

delete from authors
where authors.id not in (select author_id from book_authors);