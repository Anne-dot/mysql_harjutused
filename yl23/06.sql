/* 6) Uuenda kõiki raamatuid: tõsta hinda 5% ja vähenda lk arvu 5 võrra. */

update books
set price = price * 1.05;

update books
set pages = pages - 5;