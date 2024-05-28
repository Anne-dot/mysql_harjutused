/* Täidetud tellimuste arv aasta kaupa. Väljasta ainult tellimuse aasta ja tellimuste arv. 
Tulemuse veeru pealkirjaks pane “Aasta” ja “Tellimuste arv” (ei ole vaja andmebaasis tabelit muuta!). 
COUNT(), GROUP BY, DATE või YEAR, AS (tulemus 4 kirjet) */

SELECT 
    YEAR(order_date) AS 'Aasta', COUNT(*) AS 'Tellimuste arv'
FROM
    orders
WHERE
    status = 'sent'
GROUP BY YEAR(order_date);