CREATE TABLE distritos(
	id INTEGER PRIMARY KEY,
	nombre VARCHAR(30),
  provincia_id INTEGER,
  FOREIGN KEY(provincia_id) REFERENCES provincias ( id ) ON DELETE CASCADE
);
