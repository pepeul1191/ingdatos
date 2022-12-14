CREATE TABLE generos(
	id NUMBER(7) PRIMARY KEY,
	nombre VARCHAR2(30)
);

ALTER TABLE generos ADD (
  CONSTRAINT generos_pk PRIMARY KEY (ID));

CREATE SEQUENCE generos_seq START WITH 1;

CREATE OR REPLACE TRIGGER generos_pk 
BEFORE INSERT ON generos 
FOR EACH ROW

BEGIN
  SELECT generos_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/