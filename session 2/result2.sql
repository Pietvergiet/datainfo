INSERT INTO F (x, y, violation, motivation)  VALUES
('E', 'D', 1, "Als je E weet weet je alleen D en A; E -> EDA"),
('D', 'A', 1, "Als je D weet weet je alleen A; D -> DA")
;

INSERT INTO F1 (x, y, violation, motivation) VALUES
('E', 'D', 0, "")
;

INSERT INTO F2 (x, y, violation, motivation) VALUES
('ABC', 'EF', 0, ""),
('E', 'A', 1, "Als je E weet weet je alleen A; E -> A")
;

INSERT INTO F2a (x, y, violation, motivation) VALUES
('E', 'A', 0, "")
;

INSERT INTO F2b (x, y, violation, motivation) VALUES
('EBC', 'EF', 0, "")
;