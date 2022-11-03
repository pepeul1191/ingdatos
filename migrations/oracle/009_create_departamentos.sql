CREATE TABLE departamentos(
	id NUMBER(7) PRIMARY KEY,
	nombre VARCHAR2(30)
);

ALTER TABLE departamentos ADD (
  CONSTRAINT departamentos_pk PRIMARY KEY (ID));

CREATE SEQUENCE departamentos_seq START WITH 1;

CREATE OR REPLACE TRIGGER departamentos_pk 
BEFORE INSERT ON departamentos 
FOR EACH ROW

BEGIN
  SELECT departamentos_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/