/*
1) Lisa kasutajate tabelisse uus kasutaja ja kasuta enda andmeid. INSERT
*/

/* enda jaoks kastatud päringud

describe clients;

select * from clients
where first_name = 'Anne';
*/


insert into clients (username, first_name, last_name, email, password, address)
values ('anneRuu123', 'Anne', 'Ruusmann', 'ruusmann@gmail.com', 'anneke123', 'Allee 5-3 Kuressaare');