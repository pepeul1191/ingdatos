CREATE TABLE provincias(
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	nombre VARCHAR(30),
  departamento_id INTEGER,
  FOREIGN KEY(departamento_id) REFERENCES departamentos ( id ) ON DELETE CASCADE
);
