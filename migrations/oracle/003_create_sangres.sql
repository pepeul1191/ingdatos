CREATE TABLE sangres(
	id NUMBER(7) PRIMARY KEY,
	nombre VARCHAR2(5)
);

ALTER TABLE sangres ADD (
  CONSTRAINT sangres_pk PRIMARY KEY (ID));

CREATE SEQUENCE sangres_seq START WITH 1;

CREATE OR REPLACE TRIGGER sangres_pk 
BEFORE INSERT ON sangres 
FOR EACH ROW

BEGIN
  SELECT sangres_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/