SELECT p.name, m.year FROM Person p, Directs d, Movie m, Genre g
WHERE p.pid = d.pid 
AND d.mid = m.mid
AND m.mid = g.mid
AND g.genre = 'Action'
GROUP BY p.pid
HAVING count(p.pid) >= 2
;	