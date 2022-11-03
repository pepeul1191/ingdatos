CREATE TABLE provincias(
	id NUMBER(7) PRIMARY KEY,
	nombre VARCHAR2(30),
  departamento_id NUMBER(7),
  FOREIGN KEY (departamento_id) REFERENCES departamentos
);

ALTER TABLE provincias ADD (
  CONSTRAINT provincias_pk PRIMARY KEY (ID));

CREATE SEQUENCE provincias_seq START WITH 1;

CREATE OR REPLACE TRIGGER provincias_pk 
BEFORE INSERT ON provincias 
FOR EACH ROW

BEGIN
  SELECT provincias_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/