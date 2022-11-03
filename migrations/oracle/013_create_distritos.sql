CREATE TABLE distritos(
	id NUMBER(7) PRIMARY KEY,
	nombre VARCHAR2(30),
  provincia_id NUMBER(7),
  FOREIGN KEY (provincia_id) REFERENCES provincias
);

ALTER TABLE distritos ADD (
  CONSTRAINT distritos_pk PRIMARY KEY (ID));

CREATE SEQUENCE distritos_seq START WITH 1;

CREATE OR REPLACE TRIGGER distritos_pk 
BEFORE INSERT ON distritos 
FOR EACH ROW

BEGIN
  SELECT distritos_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/