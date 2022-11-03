CREATE TABLE ciudadanos(
  id NUMBER(7) PRIMARY KEY,
  dni VARCHAR2(8),
  nombres VARCHAR2(40),
  apellido_paterno VARCHAR2(40),
  apellido_materno VARCHAR2(40),
  correo VARCHAR2(40),
  fecha_nacimiento DATE,
  genero_id NUMBER(7),
  educacion_nivel_id NUMBER(7),
  sangre_id NUMBER(7),
  distrito_id NUMBER(7),
  FOREIGN KEY (genero_id) REFERENCES generos,
  FOREIGN KEY (educacion_nivel_id) REFERENCES educacion_niveles,
  FOREIGN KEY (sangre_id) REFERENCES sangres,
  FOREIGN KEY (distrito_id) REFERENCES distritos
);

ALTER TABLE ciudadanos ADD (
  CONSTRAINT ciudadanos_pk PRIMARY KEY (ID));

CREATE SEQUENCE ciudadanos_seq START WITH 1;

CREATE OR REPLACE TRIGGER ciudadanos_pk 
BEFORE INSERT ON ciudadanos 
FOR EACH ROW

BEGIN
  SELECT ciudadanos_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/
