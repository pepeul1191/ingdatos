CREATE TABLE ciudadanos_pasatiempos(
  id INTEGER PRIMARY KEY,
  ciudadano_id INTEGER,
  pasatiempo_id INTEGER,
  horas_semana NUMBER(3),
  FOREIGN KEY (ciudadano_id) REFERENCES ciudadanos,
  FOREIGN KEY (pasatiempo_id) REFERENCES pasatiempos
);