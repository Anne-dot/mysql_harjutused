/*
Keelte kaupa vastavas keeles kirjutatud raamatute hulk ja keel. Järejesta hulk
kahanevalt. (top3: 38 Italian, 36 Finnish, 35 Hungarian)

*/

select count(*) as 'Book count', language as 'Language' from books
group by language
order by count(*) desc;