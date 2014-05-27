SELECT p.name FROM Person p, Writes w
WHERE p.pid = w.pid
AND w.pid NOT IN (
	SELECT w.pid
	FROM Directs d, Writes w
	WHERE d.mid = w.mid
	)
;	