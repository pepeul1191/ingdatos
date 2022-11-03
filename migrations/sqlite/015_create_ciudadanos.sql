CREATE TABLE ciudadanos(
  id INTEGER PRIMARY KEY,
  dni VARCHAR(8),
  nombres VARCHAR(40),
  apellido_paterno VARCHAR(40),
  apellido_materno VARCHAR(40),
  correo VARCHAR(40),
  fecha_nacimiento DATE,
  genero_id INTEGER,
  educacion_nivel_id INTEGER,
  sangre_id INTEGER,
  distrito_id INTEGER,
  FOREIGN KEY (genero_id) REFERENCES generos (id),
  FOREIGN KEY (educacion_nivel_id) REFERENCES educacion_niveles (id),
  FOREIGN KEY (sangre_id) REFERENCES sangres (id),
  FOREIGN KEY (distrito_id) REFERENCES distritos (id)
);