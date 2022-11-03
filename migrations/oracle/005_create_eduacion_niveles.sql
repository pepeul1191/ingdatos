CREATE TABLE educacion_niveles(
	id NUMBER(7) PRIMARY KEY,
	nombre VARCHAR2(30)
);

ALTER TABLE educacion_niveles ADD (
  CONSTRAINT educacion_niveles_pk PRIMARY KEY (ID));

CREATE SEQUENCE educacion_niveles_seq START WITH 1;

CREATE OR REPLACE TRIGGER educacion_niveles_pk 
BEFORE INSERT ON educacion_niveles 
FOR EACH ROW

BEGIN
  SELECT educacion_niveles_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/