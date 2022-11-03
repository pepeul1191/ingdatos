CREATE TABLE pasatiempos(
	id NUMBER(7) PRIMARY KEY,
	nombre VARCHAR2(30)
);

ALTER TABLE pasatiempos ADD (
  CONSTRAINT pasatiempos_pk PRIMARY KEY (ID));

CREATE SEQUENCE pasatiempos_seq START WITH 1;

CREATE OR REPLACE TRIGGER pasatiempos_pk 
BEFORE INSERT ON pasatiempos 
FOR EACH ROW

BEGIN
  SELECT pasatiempos_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/