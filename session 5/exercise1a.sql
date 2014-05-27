CREATE TABLE Boek (
isbn String,
titel String,
auteur String,
PRIMARY KEY (isbn)
);

CREATE TABLE Exemplaar (
isbn String,
volgnummer INTEGER,
gewicht INTEGER,
kast String,
PRIMARY KEY (volgnummer),
FOREIGN KEY (isbn) REFERENCES Boek(isbn) ON delete cascade ON update cascade
);