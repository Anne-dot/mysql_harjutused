/* Raamatute tabelist kogu laoväärtus. aritmeetika operaatorid (17170638.41) */

SELECT 
    ROUND(SUM(price * stock_saldo), 2) AS 'Laoväärtus'
FROM
    books