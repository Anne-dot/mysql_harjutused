/*
Uuenda esimese raamatu andmeid ja pane keeleks Eesti (id = 1). UPDATE
*/

/* abipäring
select * from books
where id = 1;
*/

update books
set language = 'Estonian'
where id = 1;