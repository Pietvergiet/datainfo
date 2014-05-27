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
PRIMARY KEY (volgnummer)
);

CREATE TRIGGER BoekDelete
after delete on Boek
for each row 
begin
delete from Exemplaar where old.isbn = Exemplaar.isbn;
end;