SELECT p.name FROM Person p, Writes w
WHERE w.pid = p.pid
AND w.mid NOT IN (SELECT d.mid FROM Directs d);