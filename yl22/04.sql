/*
Tüübi kaupa raamatute keskmine hind ja kogus. CASE väljundi vormindamiseks
Väljund järgmine:
Tüüp		Keskmine hind	Hulk
Uus			31.64			721
Kasutatud	29.15			726
E-raamat	30.78			779

https://www.youtube.com/watch?v=RYIiOG4LsvQ
*/

select 
case
	when type = 'new' then 'Uus'
    when type = 'used' then 'Kasutatud'
    when type = 'ebook' then 'E-raamat'
end as 'Tüüp',
round(avg(price), 2) as 'Keskmine hind' ,
count(*) as 'Hulk'
from books
group by type;