SELECT 'YOUNGEST' AS TYPE, name, birthday
FROM worker
WHERE birthday = (SELECT MAX(birthday) FROM worker)
UNION ALL
SELECT 'OLDEST' AS TYPE, name, birthday
FROM worker
WHERE birthday = (SELECT MIN(birthday) FROM worker)
ORDER BY TYPE DESC;