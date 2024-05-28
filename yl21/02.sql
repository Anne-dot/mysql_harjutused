/* Raamatute nimekiri: alates 2010 aastast välja antud raamatud, mis on uued. Sorteerida pealkirja järgi tähestikulises järjekorras.
		SELECT * FROM tabel WHERE tingimus1 AND tinigmus2 ORDER BY veerg;
(tulemus 113 kirjet) */

SELECT 
    *
FROM
    books
WHERE
    type = 'new' AND release_date >= 2010
    order by title;
