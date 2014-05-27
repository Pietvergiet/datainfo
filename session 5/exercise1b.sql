PRAGMA foreign_keys = ON;

INSERT INTO Boek (isbn, titel, auteur) VALUES
("123", "Het roze paard", "henk"),
("1234", "Het roze paard", "henk"),
("789", "Het blauwe ezeltje", "Karel");

INSERT INTO Exemplaar(isbn, volgnummer, gewicht, kast) VALUES
("789", 1, 12, "1a");