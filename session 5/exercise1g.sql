CREATE TABLE Bestelling (
isbn String,
aantal INTEGER,
FOREIGN KEY (isbn) REFERENCES Boek(isbn)
);

CREATE TRIGGER nieuweBestelling
before insert on Boek
for each row
begin 
INSERT INTO Bestelling(isbn, aantal) VALUES
SELECT new.isbn, 0
WHERE 
	NOT EXISTS
		SELECT isbn FROM Boek b
			WHERE b.isbn = new.isbn
RETURN NEW
end;