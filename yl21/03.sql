/*Raamatute nimekiri: raamatud, mis on ilmunud enne 1970. aastat on kasutatud ja mille hind on väiksem kui 20 eurot. Väljastada ainult pealkiri, aasta, hind ja tüüp veerud. (tulemus 2 kirjet) */

SELECT 
    title, release_date, price, type
FROM
    books
WHERE
    release_date < 1970 
		AND type = 'used'
        AND price < 20;