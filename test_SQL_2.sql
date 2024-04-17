SELECT item FROM item_bought GROUP BY item HAVING COUNT(item) < (SELECT COUNT(item) FROM item_bought GROUP BY item ORDER BY COUNT(item) DESC LIMIT 1)
AND item != (SELECT item FROM item_bought GROUP BY item ORDER BY COUNT(item) DESC OFFSET 2 LIMIT 1)
ORDER BY COUNT(item) DESC;